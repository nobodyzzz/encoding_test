ENV["RACK_ENV"] = "test"

require File.expand_path("../../config/init.rb", __FILE__)

RSpec.configure do |config|
  config.mock_framework = :rspec
  
  # RSpec automatically cleans stuff out of backtraces;
  # sometimes this is annoying when trying to debug something e.g. a gem
  config.backtrace_clean_patterns = [
    /\/lib\d*\/ruby\//,
    /bin\//,
    /gems/,
    /spec\/spec_helper\.rb/,
    /lib\/rspec\/(core|expectations|matchers|mocks)/,
    /org\/jruby\/.*.java/
  ]
  
end


