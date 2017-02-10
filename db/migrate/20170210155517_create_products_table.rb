class CreateProductsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :products_tables do |t|
      t.column :name, :string
      t.column  :price, :integer
      t.column  :country, :string
    end
  end
end
