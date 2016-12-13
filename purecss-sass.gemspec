# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purecss/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'purecss-sass'
  spec.version       = Purecss::Sass::VERSION
  spec.authors       = ['Dmitriy Tarasov']
  spec.email         = ['info@rubysamurai.com']

  spec.summary       = 'Pure CSS framework by Yahoo, converted to Sass and ready to use in Ruby projects'
  spec.description   = 'Pure CSS framework by Yahoo, converted to Sass and ready to use in Ruby projects'
  spec.homepage      = 'https://github.com/rubysamurai/purecss-sass'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'sass', '~> 3.3'

  spec.add_development_dependency 'compass', '~> 1.0.3'
  spec.add_development_dependency 'railties', '~> 5.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'sprockets-rails', '~> 3.0'
end
