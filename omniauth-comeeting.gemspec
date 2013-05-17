# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-comeeting/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Atsuhiko Kimura"]
  gem.email         = ["atskimura@gmail.com"]
  gem.description   = %q{OmniAuth strategy for co-meeting.}
  gem.summary       = %q{OmniAuth strategy for co-meeting.}
  gem.homepage      = "https://github.com/atskimura/omniauth-comeeting"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-comeeting"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::CoMeeting::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
