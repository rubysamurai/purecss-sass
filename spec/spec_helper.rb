ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('support/dummy_rails_app/config/environment.rb', __dir__)
require 'bundler/setup'
require 'purecss-sass'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    gem_path = File.expand_path('..', File.dirname(__FILE__))
    tmp_dir_path = File.join(gem_path, 'tmp')
    FileUtils.mkdir_p(tmp_dir_path)
  end

  config.after(:suite) do
    FileUtils.rm_rf('tmp', secure: true)
  end
end
