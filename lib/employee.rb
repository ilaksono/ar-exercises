class Employee < ActiveRecord::Base
  # attr_writer :password
  belongs_to :store  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence:true, numericality: { less_than: 201 }
  validates :hourly_rate, presence:true, numericality: { greater_than: 39 }
  validates :store_id, presence: true
  
  # after_create :set_password
  before_save :set_password
  private
  def set_password    
    self.password = "password"
    # self.save
    # self.update(password: "password") 
  end 

end
