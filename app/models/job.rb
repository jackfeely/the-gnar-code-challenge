class Job < ActiveRecord::Base
  validates :poster, :location, :status, :category, presence: true
  
end
