module Routes
  module RootPage
    def self.registered(app)

      #
      # The front page for the application
      #
      app.get '/' do

        erb :"pages/frontpage"
      end

    end
  end
end