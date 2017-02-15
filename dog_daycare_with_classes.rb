class Dog
  attr_accessor :breed, :name, :human, :friendly
  #attr_reader = for getters
  #attr_writer = for setlers

  def initialize(breed, name, human, friendly)
    @breed = breed
    @name = name
    @human = human
    @friendly = friendly
  end

  def bark
    puts "#{name} says: wuf wuf!"
  end

  def sleap
    puts "#{name} is actualy in...zzzzzzzzzzzzz"
  end

  def play
    puts "#{name} is thinking com'on. throw me the stick"
  end

  def eat(food)
    if food == "carrot"
      puts "#{name} says: blaaaach, I don't eat that"
    else
      puts "#{name} is eating #{food} and thinking: mmmmmm yammy"
    end
  end

  def bite(another_human)
    if @friendly && another_human.name != @human.name
      puts "#{name} says: I just bit you, ha ha"
    else
      puts "#{name} says: I can't bite you, sorry!"
    end
  end

  def play_together(dog)
    if @friendly && dog.friendly
      puts "#{name} is saying: hi #{dog.name}, wanna play?"
    else
      puts "Sorry, we can't play together, we don't get along"
    end
  end

  def present
    puts "Hi, I am #{name}, I am a #{breed} (but that doesn't really matter) and my human's name is #{human.name}"
    # @name is refering the instance variable I created in initialize.
    # #{name} and name.self refer to the name I defined in the attr_accessor
    # they all return the same output!
  end
end

class Human
  attr_accessor :name, :friendly, :dog, :gen

  def initialize(name, friendly, dog, gen)
    @name = name
    @friendly = friendly
    @dog = dog
    @gen = gen

    dog.human = self
  end

  def present
    puts "Hi, I am #{name} and my dog's name is #{dog.name}"
  end
end

dogs = [chuchu = Dog.new("terrier", "chuchu", nil, false),
puma = Dog.new("beagle", "puma", nil, true),
jimie = Dog.new("boxer", "jimie", nil, false),
michel = Dog.new("mixed", "michel", nil, true)]

david = Human.new("david", false, chuchu, "he")
orly = Human.new("orly", true, puma, "she")
tal = Human.new("tal", false, jimie, "she")
neta = Human.new("neta", true, michel, "she")



puts "the dogs in the daycare are:\n"
dogs.each {|dog| puts dog.name}
puts
chuchu.present
michel.present
orly.present
david.present
chuchu.play
puma.sleap
puts
jimie.bite(orly)
puma.bite(neta)
chuchu.bite(david)
puts
puma.play_together(jimie)
puma.play_together(michel)
puts
puma.eat("carrot")
jimie.eat("pizza")
