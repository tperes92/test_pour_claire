class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.belongs_to :participant, index: true
      t.belongs_to :involved_project, index: true

      t.timestamps
    end
  end
end
