# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/jprovision/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-jprovision'
  spec.version       = VagrantPlugins::Jprovision::VERSION
  spec.authors       = ['John Deatherage']
  spec.email         = ['jdeatherage@juniper.net']
  spec.summary       = 'A Vagant provisioner plugin for Junos devices, e.g. Firefly Perimeter'
  spec.description   = 'A Vagant provisioner plugin for Junos devices, e.g. Firefly Perimeter'
  spec.homepage      = 'https://github.com/JNPRAutomate/vagrant-jprovision'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-core'
  spec.add_development_dependency 'rspec-expectations'
  spec.add_development_dependency 'rspec-mocks'
end
