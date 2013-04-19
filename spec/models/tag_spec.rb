require 'spec_helper'

describe Tag do
  it { should have_many(:status_tags) }
end
