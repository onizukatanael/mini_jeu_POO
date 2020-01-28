require 'bundler'

Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")

while player1.life_points > 0 || player2.life_points > 0
  puts "Voici l'état de chaque joueur :"
  puts player1.show_state
  puts player2.show_state
  puts "---------------------------------"

  	if player1.life_points <= 0 #pour le cas de figure où Josiane meurt
  	puts "#{player1.name} est morte..."  
  	break
	else
		puts "Passons à la phase d'attaque :"
	    puts player1.attacks(player2)
	end
	
	if player2.life_points <= 0 #pour le cas de figure où José meurt
		puts "#{player2.name} est mort..."  
    break
    else
	  	puts "Passons à la phase d'attaque :"
	  	puts player2.attacks(player1)
	end
end

binding pry
