# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-cloud66/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aleksandar Diklic"]
  gem.email         = ["rastasheep@gmail.com"]
  gem.description   = %q{Unfficial OmniAuth strategy for Cloud66.}
  gem.summary       = %q{Unfficial OmniAuth strategy for Cloud66.}
  gem.homepage      = "https://github.com/rastasheep/omniauth-cloud66"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-cloud66"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Cloud66::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
