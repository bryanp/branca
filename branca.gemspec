# frozen_string_literal: true

require File.expand_path("../lib/branca/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name = "branca"
  spec.version = Branca::VERSION
  spec.summary = "Branca API tokens for Ruby."
  spec.description = spec.summary

  spec.author = "Bryan Powell"
  spec.email = "bryan@metabahn.com"
  spec.homepage = "https://github.com/metabahn/branca/"

  spec.required_ruby_version = ">= 2.5.0"

  spec.license = "MPL-2.0"

  spec.files = Dir["CHANGELOG.md", "README.md", "LICENSE", "lib/**/*"]
  spec.require_path = "lib"

  spec.add_dependency "b3bm", "~> 0.0.0"
end
