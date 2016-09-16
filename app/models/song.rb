class Song < ApplicationRecord
	has_many :roles
	has_many :collaborators, through: :roles
	validates :title, presence: true
	validates :chart, presence: true

end
