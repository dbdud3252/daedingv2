class AddContenToSubmits < ActiveRecord::Migration[5.2]
  def change
    add_column :submits, :duedate, :date
    add_column :submits, :price, :integer
  end
end
