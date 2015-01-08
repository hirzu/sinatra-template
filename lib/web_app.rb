require 'sinatra/base'
require 'sinatra/asset_pipeline'

class WebApp < Sinatra::Base

  #set :assets_precompile, %w(*.js *.css *.png *.jpg *.svg *.eot *.ttf *.woff)
  #set :assets_prefix, %w(../assets)
  #set :assets_protocol, :http
  #set :assets_css_compressor, :sass
  #set :assets_js_compressor, :uglifier

  register Sinatra::AssetPipeline

  #
  # General configurations
  #
  configure do
    set :run, false
    set :root , File.expand_path('./')
    set :public_folder, Proc.new { File.join(root, "static") }
    set :views, Proc.new { File.join(root, "templates") }
  end

  #
  # Route definitions
  #
  require 'routes/root_page'
  register Routes::RootPage

end