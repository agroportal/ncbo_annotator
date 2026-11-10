source 'https://rubygems.org'

gem 'faraday'
gem 'ffi'
gem 'oj', '~> 3.0'
gem 'rake'
gem 'request_store'
gem 'parallel'
gem 'json-ld'
gem 'jwt'
gem 'ruby-xxHash'
gem 'activesupport'

group :test do
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'ontoportal_testkit', github: 'agroportal/ontoportal_testkit', branch: 'chore/ruby-3.4.12-bookworm'
  gem 'pry'
  gem 'simplecov'
  gem 'simplecov-cobertura' # for codecov.io
end

# NCBO gems (can be from a local dev path or from rubygems/git)
gem 'goo', github: 'agroportal/goo', branch: 'chore/ruby-3.4.12'
gem 'ontologies_linked_data', github: 'agroportal/ontologies_linked_data', branch: 'chore/ruby-3.4.12'

# agroportal ontologies_linked_data requires net/ftp, a bundled gem since Ruby 3.1
gem 'net-ftp'
