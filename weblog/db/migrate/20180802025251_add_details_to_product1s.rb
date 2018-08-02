class AddDetailsToProduct1s < ActiveRecord::Migration[5.2]
  def change
    add_column :product1s, :price, :decimal, precision: 5, scale: 2
    add_column :product1s, :supplier, :reference{polymorphic}
  end
end
