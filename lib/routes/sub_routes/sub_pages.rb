module Routes
  module SubRoutes
    module SubPages
      def self.registered(app) 

      	app.get '/sub1' do 
      	  'SUB1'
      	end

      end
    end
  end
end