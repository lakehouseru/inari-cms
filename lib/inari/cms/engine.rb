module Inari
  module Cms
    class Engine < ::Rails::Engine
      config.i18n.load_path += Dir[Engine.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

      initializer :append_migrations do |app|
        unless app.root.to_s.match root.to_s
          config.paths['db/migrate'].expanded.each do |expanded_path|
            app.config.paths['db/migrate'] << expanded_path
          end
          
        end
      end

      config.generators do |g|
        g.stylesheets false
        g.helper false
        g.javascripts false
        g.test_framework false, fixtures: false
        g.template_engine :slim
      end

      # http://edgeguides.rubyonrails.org/engines.html#overriding-models-and-controllers
      config.to_prepare do
        Dir.glob(Rails.root + 'app/decorators/**/*_decorator*.rb').each do |c|
          require_dependency(c)
        end
      end
    end
  end
end
