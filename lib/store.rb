class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue,  numericality: { only_integer: true }, numericality: {greater_than: 0}
  validate :must_have_mens_womens
    def must_have_mens_womens
    if !self.mens_apparel && !self.womens_apparel
      return errors.add(:mens_apparel, "must carry mens or womens apparel")
    end
    return true;
  end
end
