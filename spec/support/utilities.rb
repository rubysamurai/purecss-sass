module Purecss
  module Sass
    module SpecUtilities
      def create_and_initialize_dummy_rails_app
        system('rails new tmp/dummy_rails_app --skip-active-record --skip-test-unit --skip-spring --skip-javascript --skip-turbolinks > /dev/null')
        system("echo \"@import 'purecss';\" >> tmp/dummy_rails_app/app/assets/stylesheets/custom.scss")
        system("echo \"gem 'purecss-sass', path: '#{Dir.pwd}'\" >> tmp/dummy_rails_app/Gemfile")
        system('cd tmp/dummy_rails_app; rails generate controller Pages main --no-helper --no-assets > /dev/null')
        system('rm -rf tmp/dummy_rails_app/config/routes.rb')
        system("echo \"Rails.application.routes.draw do\" >> tmp/dummy_rails_app/config/routes.rb")
        system("echo \"  root 'pages#main'\" >> tmp/dummy_rails_app/config/routes.rb")
        system("echo \"end\" >> tmp/dummy_rails_app/config/routes.rb")
        require_relative '../../tmp/dummy_rails_app/config/environment'
      end
    end
  end
end
