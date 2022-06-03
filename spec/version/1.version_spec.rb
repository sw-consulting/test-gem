require "spec_helper"

RSpec.describe "MaxirmxTestGem" do
  describe "version" do
    it "has a version number" do |example|
      print "\n[#{example.description}] "
      expect(MaxirmxTestGem::VERSION).not_to be nil
      print "=== maxirmx test gem version #{MaxirmxTestGem::VERSION} === "

      # Validate Object Space
      GC.start
      GC.verify_compaction_references
      GC.verify_internal_consistency
    end
  end
end
