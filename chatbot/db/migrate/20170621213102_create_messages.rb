class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :from
      t.string :content

      t.timestamps
    end
  end
end
