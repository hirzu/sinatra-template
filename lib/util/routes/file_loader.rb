module Util
  module Routes
    module FileLoader
	  def self.require_all_routes_in_dir(root_dir)
        Dir["#{root_dir}/*"].each do |file|
          $log.debug "Found #{file}"
          is_directory = Pathname.new(file).directory?
          if is_directory
            $log.debug "Found directory #{file}, should check files there."
            self.require_all_routes_in_dir(file)
            $log.debug "Done with sub directory #{file}"
		  else
			file.slice! "#{File.expand_path('.')}/lib/"
			if ( file.end_with? '.rb' )
			  $log.debug "requiring #{file}"
			  file.chomp! '.rb'
			  require file
			end
		  end
	    end
	  end
    end
  end
end