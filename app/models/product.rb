class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :description, presence: true

belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
has_many :images
  # def images
  #   Image.where(product_id: id)
  # end
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
