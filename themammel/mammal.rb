puts 'I am in the mammal file'

class Mammal
  attr_accessor :alive, :health
  def initialize
    @alive = true
    puts "I am alive"
    self
  end 
  def health_value
    puts "#{@health_value}"
    self
  end 
end