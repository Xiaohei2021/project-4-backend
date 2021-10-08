# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


team_blue = Team.create(name:"Team Alpha", leader:"Blue", description:"Final Boss's Pokemon Team")
t1mon = Pokemon.create([{name:"Pidgeot", pokemon_type:"Normal, Flying", moves:"Wing Attack, Mirror Move, Sky Attack, WhirlWind", abilities:"Keen Eye", national_pokedex_num:"018", team:team_blue}, 
			{name:"Alakazam", pokemon_type:"Psychic", moves:"Psybeam,Psychic,Reflect,Recover", abilities:"Synchronize", national_pokedex_num:"065", team:team_blue}, 
			{name:"Rhydon", pokemon_type:"Ground, Rock", moves:"Leer, Tail Whip, Fury Attack, Horn Drill", abilities:"Rock Head", national_pokedex_num:"112", team:team_blue}, 
			{name:"Arcanine", pokemon_type:"Fire", moves:"Roar, Leer, Ember, Take Down", abilities:"Intimidate", national_pokedex_num:"059", team:team_blue}, 
			{name:"Exeggutor", pokemon_type:"Grass, Psychic", moves:"Hypnosis, Barrage, Stomp, Null", abilities:"Chlorophyll", national_pokedex_num:"103", team:team_blue},
			{name:"Blastoise", pokemon_type:"Water", moves:"Hydro Pump, Blizzard, Bite, Withdraw", abilities:"Torrent", national_pokedex_num:"009", team:team_blue}] )


team_lance = Team.create(name:"Team Lance", leader:"Lance", description:"Final Boss's Pokemon Team")
t2mon = Pokemon.create([{name:"Salamence", pokemon_type:"Dragon, Flying", moves:"Dragon Claw, Flamethrower, Shadow Claw, Rest", abilities:"Intimidate", national_pokedex_num:"373", team:team_lance}, 

			{name:"Gyarados", pokemon_type:"Water, Flying", moves:"Dragon Dance, Waterfall, Ice Fang, Thunder Wave", abilities:"Intimidate", national_pokedex_num:"130", team:team_lance}, 

			{name:"Garchomp", pokemon_type:"Ground, Dragon", moves:"Outrage, Sword Dance, Earth Quake, Roar", abilities:"Sand Veil", national_pokedex_num:"445", team:team_lance}, 

			{name:"Altaria", pokemon_type:"Draon, Flying", moves:"Double Team, DragonBreath, Perish Song, Hyper Beam", abilities:"Natural Cure", national_pokedex_num:"334", team:team_lance}, 

			{name:"Charizard", pokemon_type:"Fire, Flying", moves:"Flamethrower, Hyper Beam, Dragon Claw, Air Slash", abilities:"Blaze", national_pokedex_num:"006", team:team_lance},

			{name:"Dragonite", pokemon_type:"Dragon, Flying", moves:"Draco Meteor, Safeguard, Fire Blast, Hyper Beam", abilities:"Inner Focus", national_pokedex_num:"149", team:team_lance}] )