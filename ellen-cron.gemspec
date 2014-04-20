lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ellen/cron/version"

Gem::Specification.new do |spec|
  spec.name          = "ellen-cron"
  spec.version       = Ellen::Cron::VERSION
  spec.authors       = ["Ryo Nakamura"]
  spec.email         = ["r7kamura@gmail.com"]
  spec.summary       = "Mount cron system to Ellen to schedule messages on a specific time."
  spec.homepage      = "https://github.com/r7kamura/ellen-cron"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "ellen", ">= 0.0.8"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end