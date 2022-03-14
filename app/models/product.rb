class Product < ApplicationRecord
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
