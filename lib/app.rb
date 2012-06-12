require "rubygems"
require "bundler/setup"

require 'active_record'
require 'raptor'

require_relative 'screencast'

ENV['RACK_ENV'] = 'development'

config = YAML::load(File.open("config/database.yml"))
ActiveRecord::Base.establish_connection(config[ENV['RACK_ENV']])

module Demo
  App = Raptor::App.new(self) do
    root :render => "home", :present => :screencast_list

    path "screencast" do
      index
    end
  end
end