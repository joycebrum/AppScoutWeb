# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

scout_branches = [
  {
    description: 'Lobinho'
  },
  {
    description: 'Escoteiro'
  },
  {
    description: 'Sênior'
  },
  {
    description: 'Pioneiro'
  }
]
scout_branches.each do |scout_branch|
  ScoutBranch.find_or_create_by!(scout_branch)
end

places = [
  {
    place_type: 'Água'
  },
  {
    place_type: 'Quadra'
  },
  {
    place_type: 'Campo aberto'
  },
  {
    place_type: 'Qualquer Lugar'
  }
]

places.each do |place|
  Place.find_or_create_by!(place)
end

game_types = [
  {
    description: 'Ativo'
  },
  {
    description: 'Quebra-Gelo'
  },
  {
    description: 'Círculo'
  },
  {
    description: 'Revesamento'
  },
  {
    description: 'Instrução'
  },
  {
    description: 'Técnico'
  },
  {
    description: 'Virtual/Remoto'
  }
]
game_types.each do |game_type|
  GameType.find_or_create_by!(game_type)
end