class CreateSubmits < ActiveRecord::Migration[5.2]
  def change
    create_table :rails submits do |t|
      t.text :title
      t.text :content
      t.integer :user_id
      
      t.timestamps
    end
    add_index :submits, :user_id
  end
end
