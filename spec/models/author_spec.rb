require 'spec_helper'

describe Author do
  describe "full_name" do
    it "concatenates first, middle, last" do
      rwe = Author.new(:first_name => 'Ralph', :middle_name => 'Waldo', :last_name => 'Emerson')
      rwe.full_name.should eql "Ralph Waldo Emerson"
    end
    
    it "concatenates first, last" do
      hm = Author.new(:first_name => 'Herman', :last_name => 'Melville')
      hm.full_name.should eql "Herman Melville"
    end
  end
end