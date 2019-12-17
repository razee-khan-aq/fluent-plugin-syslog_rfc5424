
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluentd_syslog_rfc5424"
  spec.version       = "0.1"
  spec.authors       = ["Travis Patterson, Rachel Heaton", "Ben Fuller"]
  spec.email         = %w(tpatterson@pivotal.io rheaton@pivotal.io bfuller@pivotal.io)

  spec.summary       = %q{Send messages via rfc5424}
  spec.description   = %q{Send messages via rfc5424}
  spec.license       = "TODO"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "test-unit-rr"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "fluentd"
end
