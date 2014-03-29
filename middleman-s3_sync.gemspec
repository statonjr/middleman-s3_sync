# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman/s3_sync/version'

Gem::Specification.new do |gem|
  gem.name          = "middleman-s3_sync"
  gem.version       = Middleman::S3Sync::VERSION
  gem.authors       = ["Frederic Jean", "Will Koehler", "Larry Staton Jr."]
  gem.email         = ["fred@fredjean.net"]
  gem.description   = %q{Only syncs files that have been updated to S3.}
  gem.summary       = %q{Tries really, really hard not to push files to S3.}
  gem.homepage      = "http://github.com/statonjr/middleman-s3_sync"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'middleman-core', '>= 3.0.0'
  gem.add_runtime_dependency 'unf'
  gem.add_runtime_dependency 'fog', '>= 1.10.1'
  gem.add_runtime_dependency 'map'
  gem.add_runtime_dependency 'pmap'
  gem.add_runtime_dependency 'ruby-progressbar'
  gem.add_runtime_dependency 'colorize'

end
