puts 'I am in the dragon file'

require_relative 'mammal'
class Dragon < Mammal
  def initialize
    @health_value =170
    self
  end 
  def fly 
    @health_value -=10
    self 
  end  
  def attack_town 
    @health_value -=50
    self 
  end  
  def eat_humans  
    @health_value +=20
    self 
  end
  def health_value
    puts "this is a dragon!"
    super
  end 
end
drogo = Dragon.new
drogo.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.health_value