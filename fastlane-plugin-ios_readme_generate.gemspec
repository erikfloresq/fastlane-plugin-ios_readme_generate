# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/ios_readme_generate/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-ios_readme_generate'
  spec.version       = Fastlane::IosReadmeGenerate::VERSION
  spec.author        = %q{Erik Flores}
  spec.email         = %q{erikfloresq@gmail.com}

  spec.summary       = %q{Create readme for ios projects}
  spec.homepage      = "https://github.com/erikfloresq/fastlane-plugin-ios_readme_generate"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'fastlane-plugin-yarn', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.20.0'
end
