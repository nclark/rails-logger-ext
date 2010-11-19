module RailsLoggerExt
  require 'rails-logger-ext/extensions'
  
  if defined?(Rails)
    if Rails::VERSION::MAJOR == 3
      require 'rails-logger-ext/railtie'
    elsif Rails::VERSION::MAJOR == 2
      ActiveSupport::BufferedLogger.send(:include, RailsLoggerExt::Extensions)
    end
  end
end