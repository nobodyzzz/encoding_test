# Main entry point - DO NOT MODIFY THIS FILE
require 'rubygems'
require 'bundler'

# force into dev mode if not set
ENV["RACK_ENV"] = "development" if (ENV["RACK_ENV"] || "") == ""

RACK_ENV = ENV["RACK_ENV"]
Bundler.require(:default, RACK_ENV.to_sym)
