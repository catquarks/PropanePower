 class SongSerializer < ActiveModel::Serializer 
	attributes :id, :title, :chart, :roles
	has_many :roles, include_nested_associations: true

end