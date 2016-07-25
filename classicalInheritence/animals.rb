class Animal
  attr_accessor :name, :num_legs, :warm_blood

  def initialize(name, num_legs, warm_blood)
    @name = name
    @num_legs = num_legs
    @warm_blood = warm_blood
  end


end

module Flight
   def fly
     puts "I can fly!"
   end
end


class Mammal < Animal
  def initialize(name, num_legs, bananas)
    super(name, num_legs, true )
    @bananas = bananas
  end
  
end

class Amphibian < Animal

end

class Primate < Mammal

end

#
class Frog < Amphibian

end

class Bat < Mammal
    include Flight
    def initialize(name)
      super(name, 1, "Finches")
    end
end

class Parrot < Animal
  include Flight
  def initialize(name)
    super(name, 1, true)
  end
end

class Chimpanzee < Mammal

end