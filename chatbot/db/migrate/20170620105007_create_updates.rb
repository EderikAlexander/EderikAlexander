class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.references :user, foreign_key: true
      t.integer :mood
      t.text :message

      t.timestamps
    end
  end
end
