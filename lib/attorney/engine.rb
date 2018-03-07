module Attorney
  class Engine < ::Rails::Engine
    isolate_namespace Attorney

    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'attorney.assets.precompile' do |app|
      app.config.assets.paths << Rails.root.join('vendor', 'assets', 'javascripts')
      app.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets')
    end
  end
end
