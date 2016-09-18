 class SongSerializer < ActiveModel::Serializer 
	attributes :id, :title, :chart, :roles
	has_many :roles, serializer: SongRoleSerializer

end