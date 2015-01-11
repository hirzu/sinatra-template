module Routes
  module RootPage
    def self.registered(app)

      #
      # The front page for the application
      #
      app.get '/' do
        $log.debug 'User accessing the front page.'
        erb :"pages/frontpage"
      end

      app.get '/fail' do
        this.should fail
        erb :"pages/frontpage"
      end

    end
  end
end

module Sinatra
  register Routes::RootPage
end