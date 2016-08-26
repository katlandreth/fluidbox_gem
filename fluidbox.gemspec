# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluidbox/version'

Gem::Specification.new do |spec|
  spec.name          = "fluidbox"
  spec.version       = Fluidbox::VERSION
  spec.authors       = ["Kat Landreth, terrymun"]
  spec.email         = ["katlandreth@gmail.com"]

  spec.summary       = %q{JQuery Fluidbox lightbox plugin by terrymun, packaged as a gem.}
  spec.description   = %q{See https://github.com/terrymun/Fluidbox for plugin details.}
  spec.homepage      = "https://github.com/katlandreth/fluidbox"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "sass-rails"
  spec.add_development_dependency "jquery-rails"
end
