module Rack
  class RequestStart
    def initialize(app)
      @app = app
    end

    def call(env)
      env['process.request_start'] = Time.now.to_f

      @app.call(env)
    end
  end
end
