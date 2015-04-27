# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

class Logger
  class Formatter
    def call(severity, time, progname, msg)
      format = "[%s #%d] %5s -- %s: %s\n" 
      format % ["#{time.strftime('%Y-%m-%d %H:%M:%S')}.#{'%06d' % time.usec.to_s}",
                  $$, severity, progname, msg2str(msg)]
    end
  end
end
