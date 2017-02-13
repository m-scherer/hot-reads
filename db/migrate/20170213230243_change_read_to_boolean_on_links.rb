class ChangeReadToBooleanOnLinks < ActiveRecord::Migration[5.0]
  def change
    remove_column :links, :read
    add_column :links, :read, :boolean
  end
end
