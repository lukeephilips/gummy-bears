class AddImageToProducts < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :products, :image
  end

  def self.down
    remove_attachment :products, :image
  end
end
