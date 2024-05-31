class AddCategoryIdToCountdownEvents < ActiveRecord::Migration[7.1]
  def change
    add_reference :countdown_events, :category, null: false, foreign_key: true
  end
end
