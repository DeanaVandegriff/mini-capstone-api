class RemoveUrlFromImages < ActiveRecord::Migration[7.0]
  def change
    remove_column(:images, :url)
  end
end
