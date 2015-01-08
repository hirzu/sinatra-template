lib_path = File.expand_path './lib'
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include? lib_path

require 'sinatra/asset_pipeline/task'
require 'rm_web_ui'

Sinatra::AssetPipeline::Task.define! RmWebUi