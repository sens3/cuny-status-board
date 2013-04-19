class User < ActiveRecord::Base
  attr_accessible :name
  
  has_many :statuses
  
  def average_status_length
    return 0 if statuses.empty?
    total = statuses.reduce(0) do |sum, status|
      sum += status.text.length
    end
    total / statuses.length.to_f
  end
  
end
