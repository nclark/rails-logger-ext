require 'rails-logger-ext'
require 'rails'

module RailsLoggerExt
  class Railtie < Rails::Railtie
    initializer "rails_logger_ext.configure_rails_initialization" do |app|
      ActiveSupport::BufferedLogger.send(:include, RailsLoggerExt::Extensions)
    end
  end
end