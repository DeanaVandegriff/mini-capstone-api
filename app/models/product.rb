class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :description, presence: true

  belongs_to :supplier

  has_many :category_products

  has_many :images

  has_many :orders

  def is_discounted?
    if price < 10
      p "true"
    else
      p "false"
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    total = price + tax
  end
end
