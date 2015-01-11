require 'sinatra/base'
require 'sinatra/asset_pipeline'
require 'util/log/log_init'

class WebApp < Sinatra::Base

  #set :assets_precompile, %w(*.js *.css *.png *.jpg *.svg *.eot *.ttf *.woff)
  #set :assets_prefix, %w(../assets)
  #set :assets_protocol, :http
  #set :assets_css_compressor, :sass
  #set :assets_js_compressor, :uglifier

  register Sinatra::AssetPipeline

  $log , error_log = Util::Log::LogInit.initialize_logs(File.expand_path('./'))


  #
  # General configurations
  #
  configure do
    $log.info "Setting common configurations for all environments."
    set :run, false
    set :root , File.expand_path('./')
    set :public_folder, Proc.new { File.join(root, "static") }
    set :views, Proc.new { File.join(root, "templates") }
  end

  before do
    env['rack.errors'] = error_log
  end

  #
  # Route definitions
  #
  require 'routes/root_page'
  # register Routes::RootPage

end