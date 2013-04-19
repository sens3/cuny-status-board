class Status < ActiveRecord::Base
  attr_accessible :text
  belongs_to :user
  has_many :status_tags
end
