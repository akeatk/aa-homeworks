class AddAddressColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :address, :text
  end
end
