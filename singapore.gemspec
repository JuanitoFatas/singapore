# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "singapore/version"

Gem::Specification.new do |spec|
  spec.name          = "singapore"
  spec.version       = Singapore::VERSION
  spec.authors       = ["Juanito Fatas"]
  spec.email         = ["katehuang0320@gmail.com"]
  spec.description   = %q{Adds support for Singaporean conventions to the Ruby language}
  spec.summary       = %q{[1,2,3].empty_eh? # => false}
  spec.homepage      = "https://github.com/JuanitoFatas/Singapore"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).reject { |f| f =~ %r(^(test)/) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"
end
