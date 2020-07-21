#Let'em fight
puts "Passons à la phase d'attaque :"
  while player1.life_points > 0 && player2.life_points >0
    player2.attacks(player1)
    if player2.life_points <=0 break
  end
end