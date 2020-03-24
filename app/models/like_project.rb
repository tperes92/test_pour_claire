class LikeProject < ApplicationRecord
	belongs_to :like, optional:true
	belongs_to :project, optional:true
end
