class AddOrganizerColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :organizer, null: false, foreign_key: true
  end
end
