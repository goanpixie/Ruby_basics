class Human
  attr_accessor :strength, :intelligence, :stealth, :health

  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end
end

class Wizard<Human
  def initialize
    @intelligence = 25
    @health = 50
    self
  end
  def heal
    @health +=10
    self
  end
  def fireball(obj)
    attack(obj)
    obj.health -=20
  end
end

class Ninja<Human
    def initialize
    @stealth = 175
    self
    end
    def steal
      @health +=10
      self
    end
    def get_away
      @health -=15
      self
    end
end

class Samurai<Human
    @samurai_counter = 0

  class << self
    attr_accessor :samurai_counter
  end

  def initialize
    @health = 200
    self
  end  
  def death_blow(obj)
    attack(obj)
    obj.health = 0
  end
  def meditate
    @health= 200
  end
  def how_many
    puts "There are #{self.class.samurai_counter} samurais"
  end
end

batusai = Samurai.new
gaagmai = Samurai.new
batusai.how_many