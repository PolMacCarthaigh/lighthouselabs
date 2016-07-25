module Flight
  def fly
    puts "I'm a #{self.class}, I'm flying!"
  end
end

class Animal
  attr_accessor :is_human

  def initialize(is_human = false)
    @is_human = is_human
  end
end

class Mammal < Animal
  attr_accessor :produces_milk

  def initialize(produces_milk = true)
    super()
    @produces_milk = produces_milk
  end
end

class Amphibian < Animal
  attr_accessor :warm_blooded

  def initialize(warm_blooded = false)
    super()
    @warm_blooded = warm_blooded
  end
end

class Primate < Animal
  attr_accessor :num_legs

  def initialize(num_legs = 2)
    super()
    @num_legs = num_legs
  end
end

class Frog < Amphibian
  attr_accessor :webbed_feet

  def initialize(webbed_feet = true)
    super()
    @webbed_feet = webbed_feet
  end
end

class Bat < Mammal
  attr_accessor :has_wings

  def initialize(has_wings = true)
    super()
    @has_wings = has_wings
  end
end

class Bird < Animal
  attr_accessor :lays_eggs

  def initialize(lays_eggs = true)
    super()
    @lays_eggs = lays_eggs
  end
end

class Parrot < Bird
  def initialize
    super()
  end
  include Flight
end

class Chimpanzee < Primate
  def initialize
    super()
  end
end

polly = Parrot.new()
polly.fly