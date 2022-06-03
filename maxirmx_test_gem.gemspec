# frozen_string_literal: true

require_relative "lib/maxirmx_test_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "maxirmx_test_gem"
  spec.version       = MaxirmxTestGem::VERSION
  spec.authors       = ["Maxim [maxirmx] Samsonov"]
  spec.email         = ["m.samsonov@computer.org"]

  spec.summary       = "Test gem"
  spec.description   = "Test gem to validate musl-compatible packaging"
  spec.homepage      = "https://github.com/maxirmx/maxirmx_test_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/maxirmx_test_gem/extconf.rb"]

  spec.add_runtime_dependency "rice", "~> 4.0.4"

  spec.add_development_dependency "rspec", "~> 3.11"
end
