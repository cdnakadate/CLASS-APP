class AddFieldsToCriteria < ActiveRecord::Migration
  def change
    add_column :criteria, :pr1, :text
    add_column :criteria, :pr2, :text
    add_column :criteria, :pr3, :text
    add_column :criteria, :pr4, :text
    add_column :criteria, :pr5, :text
    add_column :criteria, :pr6, :text
    add_column :criteria, :pr7, :text
    add_column :criteria, :pr8, :text
    add_column :criteria, :pr9, :text
  end
end
