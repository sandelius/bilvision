# coding: utf-8
$:.unshift(File.expand_path('../lib', __FILE__))
require 'bilvision/version'

Gem::Specification.new do |spec|
  spec.name               = 'bilvision'
  spec.version            = Bilvision::VERSION
  spec.authors            = ['Tobias Sandelius']
  spec.email              = ['tobias@sandeli.us']
  spec.summary            = %q{Ruby wrapper for Bilvision api.}
  spec.description        = %q{Ruby wrapper for Bilvision api.
                               http://www.bilvision.se/}
  spec.homepage           = 'https://github.com/sandelius/bilvision'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 1.9.3'
  spec.require_paths         = ['lib']

  spec.add_dependency 'savon', '~> 2.3.0'

  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'simplecov', '~> 0.7'
end