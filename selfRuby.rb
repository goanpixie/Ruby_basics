class Mammal 
  def initialize
    puts 'I am alive!'
  end
  def breathe  
    puts 'Inhale and exhale' 
  end  
end

class Cat < Mammal
  def jerk
    puts 'scratching you...'
  end 
  def speak  
    puts "Meow"  
  end
  def who_am_i
    puts self
  end
end  
chloe = Cat.new
chloe.who_am_i 

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    return self 
  end 
  def speak  
    puts "Meow"
    return self   
  end
  def who_am_i
    puts self
    return self 
  end
end  
chloe = Cat.new
chloe.speak.who_am_i.jerk