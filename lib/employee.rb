class Employee < ActiveRecord::Base
  belongs_to :store  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence:true, numericality: { less_than: 201 }
  validates :hourly_rate, presence:true, numericality: { greater_than: 39 }
  validates :store_id, presence: true
  

end
