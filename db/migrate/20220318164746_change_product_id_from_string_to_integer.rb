class ChangeProductIdFromStringToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column_default :images, :url, :integer
  end
end
