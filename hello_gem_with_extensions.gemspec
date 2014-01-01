# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_gem_with_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_gem_with_extensions"
  spec.version       = HelloGemWithExtensions::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]
  spec.summary       = %q{Hello, C extension.}
  spec.description   = %q{Hello, C extension.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.extensions    = %w[ext/hello_gem_with_extensions/extconf.rb]
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec", "~> 3.0.0beta1"
end
