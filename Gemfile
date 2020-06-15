source 'https://rubygems.org'

gemspec

# Development dependencies
gem 'concurrent-ruby' # Leave it open as we also have it as an integration and want Appraisal to control the version under test.
gem 'rake', '>= 10.5'
gem 'rubocop', '= 0.49.1' if RUBY_VERSION >= '2.1.0'
gem 'rspec', '~> 3.0'
gem 'rspec-collection_matchers', '~> 1.1'
gem 'ruby-prof', '~> 1.4' if RUBY_PLATFORM != 'java' && RUBY_VERSION >= '2.4.0'
gem 'minitest', '= 5.10.1'
gem 'minitest-around', '0.5.0'
gem 'minitest-stub_any_instance', '1.0.2'
gem 'pimpmychangelog', '>= 0.1.2'
gem 'appraisal', '~> 2.2'
gem 'yard', '~> 0.9'
gem 'webmock', '~> 2.0'
gem 'builder'

gem 'climate_control', '~> 0.2.0'

# locking transitive dependency of webmock
gem 'addressable', '~> 2.4.0'
gem 'benchmark-ips', '~> 2.8'
gem 'benchmark-memory', '~> 0.1'
gem 'memory_profiler', '~> 0.9'
gem 'pry', '~> 0.12.2'
gem 'pry-nav', '~> 0.3.0'
gem 'pry-stack_explorer', '~> 0.4.9' if RUBY_PLATFORM != 'java'
gem 'simplecov', '~> 0.17'
gem 'warning', '~> 1' if RUBY_VERSION >= '2.5.0'

if RUBY_PLATFORM != 'java'
  gem 'sqlite3', '~> 1.3.6'
  gem 'redcarpet', '~> 3.4'
else
  gem 'jdbc-sqlite3', '~> 3'
end
