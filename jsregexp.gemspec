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
  spec.license       = 'BSD-3-Clause'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = 'lib'

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_development_dependency 'bundler', '~> 1.17.2'
  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_development_dependency 'minitest', '~> 5.14.0'
  spec.add_development_dependency 'rubocop', '~> 0.80.1'
  spec.add_development_dependency 'reek', '~> 5.6.0'
end
