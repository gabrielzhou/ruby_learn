class AddPartNumberToProducts1 < ActiveRecord::Migration[5.2]
  def change
    add_column :products1s, :part_number, :string
    add_index :products1s, :part_number
  end
end
