# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tv_maze/version'

Gem::Specification.new do |spec|
  spec.name          = "tv_maze"
  spec.version       = TvMaze::VERSION
  spec.authors       = ["Naveed Ahmad"]
  spec.email         = ["naveedahmada036@gmail.com"]

  spec.summary       = %q{A Ruby wrapper for the TvMaze api: http://www.tvmaze.com/api API}
  spec.description   = ''
  spec.homepage      = "https://github.com/naveed-ahmad/tv_maze"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'vcr', '~> 2.9.3'
  spec.add_development_dependency 'webmock', '~> 1.21.0'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_runtime_dependency 'representable'
  spec.add_runtime_dependency 'multi_json'
  spec.add_runtime_dependency 'rest-client'
end
