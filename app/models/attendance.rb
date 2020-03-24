class Attendance < ApplicationRecord
  belongs_to :participant, class_name: 'User', foreign_key: 'participant_id'
  belongs_to :involved_project, class_name: 'Project', foreign_key: 'involved_project_id'
end
