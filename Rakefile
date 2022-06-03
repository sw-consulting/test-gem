# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/extensiontask"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task build: :compile

Rake::ExtensionTask.new("maxirmx_test_gem") do |ext|
  ext.lib_dir = "lib/maxirmx_test_gem"
end

task default: %i[compile spec]
