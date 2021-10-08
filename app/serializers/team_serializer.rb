class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :leader, :description
	has_many :pokemons
end
