lib_path = File.expand_path './lib'
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include? lib_path

require 'sinatra/asset_pipeline/task'
require 'web_app'

Sinatra::AssetPipeline::Task.define! WebApp