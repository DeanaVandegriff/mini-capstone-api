class RemoveSupplierIdFromSupplier < ActiveRecord::Migration[7.0]
  def change
    remove_column(:suppliers, :supplier_id)
  end
end
