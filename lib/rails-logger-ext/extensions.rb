require 'pp'

module RailsLoggerExt
  module Extensions
    def pp(obj)
      info(obj.pretty_inspect)
    end
    
    def achtung!(message)
      2.times { info '-' * 50 }
      info message
      2.times { info '-' * 50 }
    end
    
    def greppable(message)
      message.pretty_inspect.split(/\n/).each do |line|
        info "%% - #{line}"
      end
    end
  end
end