require "spec_helper"

describe Fgmt do

  context "constants" do
    it { should have_constant(:FGMT) }
  end

  context "::FGMT" do
    it "should be 15" do
      Fgmt::FGMT.count.should == 15
    end
  end

  context "::FGMT" do
    it "should be 12" do
      Fgmt::FGMT.count.should == 15
    end
  end

  context "::FGMT_DATA" do
    let(:countries) { Fgmt::YML_FGMT.map { |_, v| v}.flatten.sort }

    it "provinces should be consistent with PROVINCES" do
      countries.should == Fgmt::FGMT
    end
  end
end
