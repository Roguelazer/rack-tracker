# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/tracker/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-tracker"
  spec.version       = Rack::Tracker::VERSION
  spec.authors       = ["Lars Brillert", "Marco Schaden"]
  spec.email         = ["lars@railslove.com", "marco@railslove.com"]
  spec.summary       = %q{Tracking made easy}
  spec.description   = %q{Don’t fool around with adding tracking partials to your app and concentrate on the things that matter.}
  spec.homepage      = "https://github.com/railslove/rack-tracker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack", ">= 1.4"
  spec.add_dependency "tilt", ">= 1.4"
  spec.add_dependency 'activesupport', '>= 3.0'
  if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new('3.0')
    spec.add_dependency 'ostruct'
  end

  spec.add_development_dependency 'actionpack', '>= 3.0'
  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "capybara", "~> 2.4"
  spec.add_development_dependency "pry"
  if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.0')
    spec.add_development_dependency "mime-types", "< 3.0"
    spec.add_development_dependency "addressable", "< 2.5"
  end
end
