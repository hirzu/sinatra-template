
require 'logger'

lib_path = File.expand_path './lib'
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include? lib_path

class ::Logger; alias_method :write, :<<; end

require 'web_app'

working_dir = File.expand_path './'
access_log = Logger.new "#{working_dir}/log/access.log", 'daily'
use Rack::CommonLogger, access_log

run WebApp