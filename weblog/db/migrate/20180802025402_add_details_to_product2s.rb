class AddDetailsToProduct2s < ActiveRecord::Migration[5.2]
  def change
    add_column :product2s, :price, :decimal, precision: 5, scale: 2
    add_reference :product2s, :supplier, polymorphic: true
  end
end
