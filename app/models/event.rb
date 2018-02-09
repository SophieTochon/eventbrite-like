class Event < ApplicationRecord

	# Relations d'inter-dépendance entre les tables

	belongs_to :creator, class_name: "User"
	has_and_belongs_to_many :attendees, class_name: "User"

	# Validation des entrées de l'événement

	validates :description, presence: true
	validates :date, presence: true
	validates :place, presence: true
end
