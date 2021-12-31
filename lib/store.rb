class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, :greater_than => 0 }
  def atleast_one_clothes_type
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:atleast_one_clothes_type, "Stores must carry at least one of the men's or women's apparel" )
    end
  end
end
