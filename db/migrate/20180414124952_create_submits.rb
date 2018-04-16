class CreateSubmits < ActiveRecord::Migration[5.2]
  def change
    create_table :submits do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
    add_index :submits, :user_id
  end
end
