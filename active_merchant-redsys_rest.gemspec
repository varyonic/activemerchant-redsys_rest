# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_merchant/redsys_rest/version"

Gem::Specification.new do |spec|
  spec.name          = "activemerchant-redsys_rest"
  spec.version       = ActiveMerchant::RedsysRest::VERSION
  spec.authors       = ["Piers Chambers"]
  spec.email         = ["piers@varyonic.com"]

  spec.summary       = %q{Active Merchant extension to support Redsys payment gateway}
  spec.homepage      = "https://github.com/varyonic/activemerchant-redsys_rest"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activemerchant'
  spec.add_dependency 'rexml' # required for ActiveMerchant for Ruby 3

  spec.add_development_dependency('test-unit', '~> 3')
  spec.add_development_dependency('mocha', '~> 1')
end
