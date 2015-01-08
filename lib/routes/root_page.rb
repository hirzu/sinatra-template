module Routes
  module RootPage
    def self.registered(app)

      #
      # The front page for the application
      #
      app.get '/' do
        $log.debug 'User accessing the front page.'
        armo.pala
        erb :"pages/frontpage"
      end

    end
  end
end