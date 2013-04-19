require 'spec_helper'

describe Status do
  it { should belong_to(:user) }
  it { should have_many(:status_tags) }
  
  describe "tag_list" do
    
    it "returns an empty string when there are no tags"
    it "returns a comma separated list of tag names"
      
    end
    
  end
  
end
