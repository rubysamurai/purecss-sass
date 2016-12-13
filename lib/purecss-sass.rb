module Purecss
  module Sass
    class << self
      def load!
        if defined?(::Compass::Frameworks)
          register_compass_extension
        elsif defined?(::Rails)
          register_rails_engine
        elsif defined?(::Sprockets)
          register_sprockets
        end

        configure_sass
      end

      def gem_path
        @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
      end

      def stylesheets_path
        File.join(gem_path, 'vendor/assets/stylesheets')
      end

      private

        def configure_sass
          require 'sass'

          ::Sass.load_paths << stylesheets_path
        end

        def register_compass_extension
          require 'purecss/sass/version'

          ::Compass::Frameworks.register(
            'purecss',
            version:               Purecss::Sass::VERSION,
            path:                  gem_path,
            stylesheets_directory: stylesheets_path,
            templates_directory:   File.join(gem_path, 'templates')
          )
        end

        def register_rails_engine
          require 'purecss/sass/engine'
        end

        def register_sprockets
          Sprockets.append_path(stylesheets_path)
        end
    end
  end
end

Purecss::Sass.load!
