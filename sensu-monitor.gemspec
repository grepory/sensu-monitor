# -*- encoding: utf-8 -*-
# vim: ft=ruby

require File.expand_path('../lib/sensu-monitor/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Greg Poirier']
  gem.email         = ['greg.poirier@opower.com']
  gem.description   = 'Sensu-Monitor: Application monitoring framework'
  gem.summary       = <<-EOS
  Sensu-Monitor is a Thor app specifically designed for general purpose
  monitoring.
  EOS
  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(/^bin\//).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^(test|spec|features)\//)
  gem.name          = 'sensu-monitor'
  gem.require_paths = ['lib']
  gem.version       = SensuMonitor::VERSION

  # dependencies.
  gem.add_dependency('thor', '0.18.1')
  gem.add_dependency('sysexits', '1.0.2')
  gem.add_dependency('awesome_print', '~> 1.1.0')
  gem.add_dependency('tessen')

  # development dependencies.
  gem.add_development_dependency('rspec', '~> 3.0.0')
  gem.add_development_dependency('simplecov', '~> 0.7.0')
  gem.add_development_dependency('guard', '~> 2.1.0')
  gem.add_development_dependency('guard-rspec', '~> 4.2.10')
  gem.add_development_dependency('rubocop')
  gem.add_development_dependency('guard-rubocop', '~> 1.1.0')
  gem.add_development_dependency('rainbow', '2.0')
  gem.add_development_dependency('metric_fu', '~> 4.2.0')
  gem.add_development_dependency('guard-reek', '~> 0.0.4')
  gem.add_development_dependency('rake', '~> 10.0.1')
  gem.add_development_dependency('yard', '~> 0.8.7')
  gem.add_development_dependency('redcarpet', '~> 2.3.0')
end
