class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      #user_id 저장을 위해 belongs_to
      t.belongs_to :user
      #글내용을 저장할 content
      t.text :content
      
      t.timestamps
    end
  end
end
