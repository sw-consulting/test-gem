# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/extensiontask"

task build: :compile

Rake::ExtensionTask.new("maxirmx_test_gem") do |ext|
  ext.lib_dir = "lib/maxirmx_test_gem"
end

task default: %i[clobber compile]
