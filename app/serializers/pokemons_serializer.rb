class PokemonsSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :moves, :abilities, :national_pokedex_num, :team_id
	belongs_to :team
end
