# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsregexp/version'

Gem::Specification.new do |spec|
  spec.name          = 'jsregexp'
  spec.version       = JSRegexp::VERSION
  spec.authors       = ['Alexander Skachko']
  spec.email         = ['alexander.skachko@gmail.com']

  spec.summary       = 'Ruby to JavaScript regular expression converter'
  spec.description   = 'JSRegexp is a converter from Ruby Regexp to valid JavaScript RegExp format'
  spec.homepage      = 'https://github.com/lucerion/jsregexp'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end