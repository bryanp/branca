# frozen_string_literal: true

require File.expand_path("../lib/branca/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name = "branca"
  spec.version = Branca::VERSION
  spec.summary = "Branca API tokens for Ruby."
  spec.description = spec.summary

  spec.author = "Bryan Powell"
  spec.email = "bryan@bryanp.org"
  spec.homepage = "https://github.com/bryanp/branca/"

  spec.required_ruby_version = ">= 2.6.7"

  spec.license = "MPL-2.0"

  spec.files = Dir["CHANGELOG.md", "README.md", "LICENSE", "lib/**/*"]
  spec.require_path = "lib"

  spec.add_dependency "b3bm", "~> 0.0.0"
  spec.add_dependency "core-global", "~> 0.0.0"
end
