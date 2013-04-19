require 'spec_helper'

describe StatusTag do
  it{ should belong_to(:status) }
  it{ should belong_to(:tag) }  
end
