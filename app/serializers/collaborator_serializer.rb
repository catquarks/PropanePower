 class CollaboratorSerializer < ActiveModel::Serializer 
	attributes :id, :name, :bio, :catchphrase, :cynical
	has_many :songs
	has_many :roles, include_nested_associations: true

end