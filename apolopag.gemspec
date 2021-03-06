# frozen_string_literal: true

require_relative "lib/apolopag/version"

Gem::Specification.new do |spec|
  spec.name          = "apolopag"
  spec.version       = Apolopag::VERSION
  spec.authors       = ["Kim Patro"]
  spec.email         = ["kimpastro@gmail.com"]

  spec.summary       = "SDK Integration with Apolopag Payment"
  spec.description   = "SDK Integration with Apolopag Payment"
  spec.homepage      = "https://payment.apolopag.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kimpastro/apolopag"
  spec.metadata["changelog_uri"] = "https://github.com/kimpastro/apolopag/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'http', '~> 4.4'
  spec.add_development_dependency "rspec", "~> 3.10"
end
