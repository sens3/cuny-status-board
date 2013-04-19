class StatusTag < ActiveRecord::Base
  attr_accessible :status, :tag
  belongs_to :status
  belongs_to :tag
end
