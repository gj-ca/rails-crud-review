class AddColumnToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :postcode, :string
  end
end
