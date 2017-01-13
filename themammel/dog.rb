
puts 'I am in the dog file'

require_relative 'mammal'
class Dog < Mammal
  def initialize
    @health_value =150
    self
  end 
  def pet 
    @health_value +=5
    self 
  end  
  def walk  
    @health_value -=1
    self 
  end  
  def run  
    @health_value -=10
    self 
  end 
end
dog = Dog.new
dog.pet.walk.health_value

  