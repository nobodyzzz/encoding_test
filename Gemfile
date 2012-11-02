source "http://rubygems.org"

gem "rake", "0.9.2.2"
gem "rspec" # needed for rake task

group :test do
  gem "rack-test", :require => "rack/test"
  gem "ZenTest"
end

platform :mri_19 do
  group :development, :test do
    gem "ruby-debug19"
  end
end

platform :jruby do
  gem 'jruby-openssl'
end

gem "skeletor", :git => "git@github.com:rightscale/skeletor.git"
gem "thin"
gem "cassandra"
