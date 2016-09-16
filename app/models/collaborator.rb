class Collaborator < ApplicationRecord
	has_many :roles
	has_many :songs, through: :roles
	validates :name, presence: true
end
