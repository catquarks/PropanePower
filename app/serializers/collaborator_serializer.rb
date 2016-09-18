 class CollaboratorSerializer < ActiveModel::Serializer 
	attributes :id, :name, :bio, :catchphrase, :cynical
	has_many :roles, serializer: CollaboratorRoleSerializer

end