$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'purecss-sass'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.include Purecss::Sass::SpecUtilities

  config.before(:suite) do
    gem_path = File.expand_path('..', File.dirname(__FILE__))
    tmp_dir_path = File.join(gem_path, 'tmp')
    FileUtils.mkdir_p(tmp_dir_path)
  end

  config.after(:suite) do
    FileUtils.rm_rf('tmp', secure: true)
  end

  config.before(:all, rails: true) do
    create_and_initialize_dummy_rails_app
  end
end
