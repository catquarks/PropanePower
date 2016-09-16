class Role < ApplicationRecord
  belongs_to :song 
  belongs_to :collaborator

  validates :job, presence: true
end
