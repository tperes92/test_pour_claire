class LikeProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :like_projects do |t|
      t.references :like
      t.references :project
      t.integer :quantity, default: 1
      t.timestamps
    end
  end
end
