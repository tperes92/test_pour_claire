class Like < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'fan_id'
  belongs_to :favorite_project, class_name: 'Project', foreign_key: 'favorite_project_id'

  def in_like
    self.projects
  end
  
end
