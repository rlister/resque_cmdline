# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resque_cmdline/version'

Gem::Specification.new do |spec|
  spec.name          = "resque_cmdline"
  spec.version       = ResqueCmdline::VERSION
  spec.authors       = ["Ric Lister"]
  spec.email         = ["rlister@gmail.com"]
  spec.description   = %q{resque_cmdline: simple command-line client for resque workers}
  spec.summary       = %q{Ruby command-line client for resque and sidekiq workers}
  spec.homepage      = "https://github.com/rlister/resque_cmdline"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # dependencies
  spec.add_dependency('json'          , '>= 1.7.5')
  spec.add_dependency('redis'         , '>= 3.0.2')

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rainbow"
end
