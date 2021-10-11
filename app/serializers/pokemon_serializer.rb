class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :pokemon_type, :moves, :abilities, :national_pokedex_num, :team_id
	belongs_to :team
end
