lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purecss/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'purecss-sass'
  spec.version       = Purecss::Sass::VERSION
  spec.authors       = ['Dmitriy Tarasov']
  spec.email         = ['info@rubysamurai.com']

  spec.summary       = 'Pure CSS framework, converted to Sass'
  spec.description   = 'Pure CSS framework, converted to Sass'
  spec.homepage      = 'https://github.com/rubysamurai/purecss-sass'
  spec.license       = 'MIT'

  spec.metadata['bug_tracker_uri'] = 'https://github.com/rubysamurai/purecss-sass/issues'
  spec.metadata['changelog_uri'] = 'https://github.com/rubysamurai/purecss-sass/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('>= 2.0.0')

  spec.add_runtime_dependency 'sassc', '>= 2.0'

  spec.add_development_dependency 'railties', '>= 5.0'
  spec.add_development_dependency 'rspec', '>= 3.9'
  spec.add_development_dependency 'sassc-rails', '>= 2.0'
  spec.add_development_dependency 'sprockets-rails', '>= 3.0'
end
