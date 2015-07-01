# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus/extras/version'

Gem::Specification.new do |spec|
  spec.name = 'virtus-extras'
  spec.version = Virtus::Extras::VERSION
  spec.authors = ['MichaelAChrisco']
  spec.email = ['michaelachrisco@gmail.com']

  spec.summary = 'Extras to the Virtus gem!'
  spec.description = 'Set of extra extentions to Virtus Gem'
  spec.homepage = 'https://github.com/michaelachrisco/virtus-extras'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
    .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'virtus'
  spec.add_dependency 'activemodel'
  spec.add_dependency 'activesupport'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
