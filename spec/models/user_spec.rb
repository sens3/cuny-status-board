require 'spec_helper'

describe User do

  it { should have_many(:statuses) }
  
  describe "average status length" do
    
    let(:user) { User.create! }
      
    it "returns 0 when there are no statuses" do
      user.average_status_length.should == 0
    end
    
    it "returns the average length of the users statuses" do
      user.statuses.create!(:text => 'A'*20)
      user.statuses.create!(:text => 'A'*10)
      user.average_status_length.should == 15
    end
    
    it "does not round the average" do
      statuses = [
        stub(Status, :text => 'A'*10),
        stub(Status, :text => 'A'*5 )
      ]
      
      user.stub(:statuses).and_return(statuses)
      user.average_status_length.should == 7.5
    end
    
  end
  
  describe "tag_cloud" do
    
    it "is empty when there are no statuses"
    it "is sorted by number of taggings"
    
  end
  
end
