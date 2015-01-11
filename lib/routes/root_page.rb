
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
      #
      # uri that gives an error, to demonstrate the error log printing.
      #
      app.get '/fail' do
        this.should fail
        erb :"pages/frontpage"
      end

    end
  end
end