require 'bundler'

Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")
while player1.life_points > 0 && player2.life_points > 0 do 

puts "voici l'etat de chaque joueur "
puts "  "
player1.show_state
player2.show_state
puts "Passons à la phase d'attaque :"

 
  player1.attacks(player2)
  puts "  "
  if player2.life_points > 0
    player2.attacks(player1)
   puts "  "
  else break
  end

 end

binding.pry
