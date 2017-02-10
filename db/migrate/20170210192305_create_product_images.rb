class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer    :product_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :images
  end
end
