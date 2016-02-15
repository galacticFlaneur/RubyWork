# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = "1.0"
  spec.authors       = ["Oren Kanner"]
  spec.email         = ["okanner@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://orenyk.com/"
  spec.license       = "MIT"

  spec.files         = ["lib/NAME.rb"]
  spec.executables   = ["bin/NAME"]
  spec.test_files    = ["spec/NAME_spec.rb"]
  spec.require_paths = ["lib"]
end

