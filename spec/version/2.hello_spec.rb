require "spec_helper"

RSpec.describe "MaxirmxTestGem" do
  describe "hello" do
    it "says hello" do |example|
      print "\n[#{example.description}] "
      h = MaxirmxTestGem::Hello.new
      expect(h).not_to be nil
      print " #{h.hello} "

      # Validate Object Space
      GC.start
      GC.verify_compaction_references
      GC.verify_internal_consistency
    end
  end
end
