class ChangeColumnsInAddresses < ActiveRecord::Migration[6.1]
  def change
    change_table :addresses do |table|
      table.rename :unit_no, :unit_num
      table.rename :street_no, :street_num
    end
  end
end
