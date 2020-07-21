class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} point(s) de vie."
  end

  def gets_damage(damage_received)
    @life_points = @life_points - damage_received 
  end

  def attacks(attacked_player)
    print "Le joueur #{@name} attaque le joueur #{attacked_player.name} ! "
    damage_received = compute_damage
    attacked_player.gets_damage(damage_received)

    if attacked_player.life_points > 0
      return "Il lui inflige #{damage_received} point(s) de dommages !\n"
    else
      return "Le joueur #{attacked_player.name} a été tué !"
    end

  end

  def compute_damage
    rand(1..6)
  end
end