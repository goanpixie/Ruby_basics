class Mammal 
  def initialize
    puts 'I am alive!'
  end
  def breathe  
    puts 'Inhale and exhale' 
  end  
end

class Cat < Mammal #inherits from the Mammal class 
  def jerk
    puts 'scratching you...'
  end 
  def speak  
    puts "Meow"  
  end  
end
chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe