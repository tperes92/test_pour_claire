class Project < ApplicationRecord



  belongs_to :city
  belongs_to :architect, class_name: 'User', foreign_key: 'architect_id'
  has_many :attendances, foreign_key: 'involved_project_id'
  has_many :participants, class_name: 'User', through: :attendances, foreign_key: 'participant_id'
  has_many :likes
  has_many :fans, class_name: 'User', through: :likes, foreign_key: 'fan_id'

  validates :title, presence: true, length: { in: 5..140 }
  validates :location, presence: true
  validates :description, presence: true, length: { in: 20..1000 }
  validates :number_of_participants, 
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  validates :amount_needed,
    presence: true,
    numericality: { greater_than_or_equal_to: 0 }


scope :by_city, lambda {|city| joins(:city).where('cities.name = ?',city)}




end
