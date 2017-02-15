class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, :presence => true
  validates :annual_revenue, :numericality => {:only_integer => true}
  validates :name, length: { minimum: 2 }
  validate :annual_revenue_type

  def annual_revenue_type
    if self.annual_revenue && self.annual_revenue < 0
      errors.add(:annual_revenue, "Can't be negative")
    end
  end

  def store_apparel
    if self.mens_apparel == false && self.womens_apparel == false
      errors.add(:mens_apparel, "At least has to have carry one kind of apparel")
    end
  end

end
