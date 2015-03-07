class AddMessagesToCriteria < ActiveRecord::Migration
  def change
    add_column :criteria, :note, :text
  end
end
