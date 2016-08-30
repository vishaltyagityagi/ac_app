class AddColumnToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :Whats_problem, :text
  end
end
