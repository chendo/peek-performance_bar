require 'rack/request_start'

module Peek
  module PerformanceBar
    class Railtie < ::Rails::Engine
      initializer 'peek.performance_bar.mount_request_start' do |app|
        app.config.middleware.use Rack::RequestStart
      end
    end
  end
end
