require './lib/error_checks.rb'

RSpec.describe Checks do
  describe "#check_tags(file)" do
    it "returns string " do
      expect(check_tags([]).class == String).to eql(true)
    end
  end
  describe "#check_apostrophe(file)" do
    it "returns string " do
      expect(check_apostrophe([]).class == String).to eql(true)
    end
  end
end
