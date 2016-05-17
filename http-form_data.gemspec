# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "http/form_data/version"

Gem::Specification.new do |spec|
  spec.name          = "http-google_form_data"
  spec.version       = HTTP::FormData::VERSION
  spec.homepage      = "https://github.com/dsignr/google_form_data.rb"
  spec.authors       = ["Aleksey V Zapparov"]
  spec.email         = ["ixti@member.fsf.org"]
  spec.license       = "MIT"
  spec.summary       = "http-form_data-#{HTTP::FormData::VERSION}"
  spec.description   = <<-DESC.gsub(/^\s+> /m, "").gsub("\n", " ").strip
  > Utility-belt to build form data request bodies.
  > Provides support for `application/x-www-form-urlencoded` and
  > `multipart/form-data` types.
  DESC

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//).map { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
end
