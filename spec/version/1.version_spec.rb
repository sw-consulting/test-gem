require "spec_helper"

RSpec.describe "TestGem" do
  describe "version" do
    it "has a version number" do |example|
      print "\n[#{example.description}] "
      expect(TestGem::VERSION).not_to be nil
      print "=== maxirmx test gem version #{TestGem::VERSION} === "

      # Validate Object Space
      GC.start
      GC.verify_compaction_references
      GC.verify_internal_consistency
    end
  end
end
