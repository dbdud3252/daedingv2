class AddColumnToSubmits < ActiveRecord::Migration[5.2]
  def change
    add_column :submits, :type_id, :integer
    add_column :submits, :smalltype_id, :integer
  end
end
