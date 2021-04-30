class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :unit_no
      t.string :street_no
      t.string :street
      t.string :suburb

      t.timestamps
    end
  end
end
