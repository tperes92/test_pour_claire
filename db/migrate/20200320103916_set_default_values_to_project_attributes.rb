class SetDefaultValuesToProjectAttributes < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :number_of_participants, :integer, :default => 0
    change_column :projects, :amount_needed, :integer, :default => 0
  end
end
