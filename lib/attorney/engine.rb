module Attorney
  class Engine < ::Rails::Engine
    isolate_namespace Attorney

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
