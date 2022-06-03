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

desc "Build pre-compiled gem for the #{RUBY_PLATFORM} platform"
task "gem:native:#{RUBY_PLATFORM}" do
  sh "rake compile platform:#{RUBY_PLATFORM} gem target_platform=#{RUBY_PLATFORM}"
end

desc "Build pre-compiled gem for #{RUBY_PLATFORM} platform (internal task)"
task "platform:#{RUBY_PLATFORM}" do
  spec = Gem::Specification::load("maxirmx_test_gem.gemspec").dup
  spec.platform = Gem::Platform.new(RUBY_PLATFORM)
  spec.files += Dir.glob("lib/maxirmx_test_gem/*.{dll,so,dylib}")
  spec.extensions = []

  task = Gem::PackageTask.new(spec)
  task.define
end
