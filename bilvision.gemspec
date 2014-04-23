# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bilvision/version'

Gem::Specification.new do |spec|
  spec.name          = 'bilvision'
  spec.version       = Bilvision::VERSION
  spec.authors       = ['Tobias Sandelius']
  spec.email         = ['tobias@sandeli.us']
  spec.summary       = %q{Ruby wrapper for Bilvision api.}
  spec.description   = %q{Ruby wrapper for Bilvision api. http://www.bilvision.se/}
  spec.homepage      = 'https://github.com/sandelius/bilvision'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.0.0'
  s.require_paths         = ['lib']

  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'simplecov', '~> 0.7'
end


version = File.read(File.expand_path('../../RAMVERK_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.name        = 'ramverk-hook'
  s.version     = version
  s.authors     = ['Tobias Sandelius']
  s.email       = ['tobias@sandeli.us']
  s.homepage    = 'http://ramverk.org/'
  s.summary     = 'Filter and Action system component.'
  s.description = 'Filter and Action system component for the Ramverk package.'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.0.0'
  s.require_paths         = ['lib']

  s.files = Dir['{lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'simplecov', '~> 0.7'
end
