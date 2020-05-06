require File.expand_path('boot', __dir__)

require 'rails'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'sassc-rails'
require 'sprockets/railtie'
require 'purecss-sass'

module DummyRailsApp
  class Application < Rails::Application
  end
end
