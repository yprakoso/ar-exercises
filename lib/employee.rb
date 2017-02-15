class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :minimum_hourly_rate, :maximum_hourly_rate

  def minimum_hourly_rate
    if self.hourly_rate < 40
      errors.add(:hourly_rate, "Should be greater than 40")
    end
  end

  def maximum_hourly_rate
    if self.hourly_rate > 200
      errors.add(:hourly_rate, "Should be less than 200")
    end
  end



end
