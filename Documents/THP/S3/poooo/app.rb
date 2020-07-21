require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#Create of 2 players
player1 = Player.new('José Garcia')
player2 = Player.new('Antoine de Caunes')

#Show state of each player
def state_before_fight(player1, player2)
  puts "Voici l'état de chaque joueur :"
  player1.show_state
  player2.show_state
end

#Let'em fight
def start_fighting(player1, player2)
  puts "Passons à la phase d'attaque :"
    while player1.life_points > 0 || player2.life_points > 0
      player1.attacks(player2)
      if player2.life_points <= 0 
      break 
        end
      player2.attacks(player1)
    end
end

def perform(player1, player2)
  state_before_fight(player1, player2)
  start_fighting(player1, player2)
end

p perform(player1, player2)