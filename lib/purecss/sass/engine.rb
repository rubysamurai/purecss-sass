module Purecss
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'purecss-sass.assets.precompile' do |app|
          app.config.assets.paths << root.join('vendor/assets/stylesheets').to_s
        end
      end
    end
  end
end
