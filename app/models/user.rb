class User < ApplicationRecord

	# Relations d'inter-dépendance entre les tables

	has_many :created_events, class_name: "Event",
							  foreign_key: "creator_id"
	has_and_belongs_to_many :attended_events, class_name: "Event"

	# Validation des entrées de l'utilisateur

	validates :name, presence: true, length: { maximum: 50 }

	# Gestion des mots de passe sécurisés

	has_secure_password

    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
end
