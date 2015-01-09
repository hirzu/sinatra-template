
module Util
  module Log
    module LogInit

      def self.initialize_logs(root_dir)
        # File.expand_path('./')}

        log = Logger.new "#{root_dir}/log/application.log", 'daily'
        log.formatter = proc do |severity, time, progname, msg|
          "#{time} - #{severity}: #{msg}\n"
        end

        # error_log = ErrorLogger.new root_dir
        error_log = Logger.new "#{root_dir}/log/error.log", 'daily'
        def error_log.puts(message)
          self.error(message)
        end

        def error_log.flush()
        end

        def error_log.write(message)
          self.error(message)
        end

        error_log.formatter = proc do |severity, time, progname, msg|
          "#{time} - #{severity}: #{msg}\n"
        end

        return log, error_log

      end
    end
  end
end