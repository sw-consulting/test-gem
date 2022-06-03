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

platforms = [
  "x86_64-linux",
  "x86_64-musl",
]

platforms.each do |platform|
  desc "Build pre-compiled gem for the #{platform} platform"
  task "gem:native:#{platform}" do
    sh "rake compile platform:#{platform} gem target_platform=#{platform}"
  end

  desc "Build binary gem on #{platform} platform"
  task "platform:#{platform}" do
    spec = Gem::Specification::load("maxirmx_test_gem.gemspec").dup
    spec.platform = Gem::Platform.new(platform)
    spec.files += Dir.glob("lib/maxirmx_test_gem/*.{dll,so,dylib}")
    spec.extensions = []

    task = Gem::PackageTask.new(spec)
    task.define
  end
end

