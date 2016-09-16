class Song < ApplicationRecord
	validates :title, presence: true
	validates :chart, presence: true

end
