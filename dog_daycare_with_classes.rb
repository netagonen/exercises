class Dog
  attr_accessor :breed, :name, :human_name, :friendly
  #attr_reader = for getters
  #attr_writer = for setlers

  def initialize(breed, name, human_name, friendly)
    @breed = breed
    @name = name
    @human_name = human_name
    @friendly = friendly
  end

  def bark
    puts "#@name says: wuf wuf!"
  end

  def sleap
    puts "#@name is actualy in...zzzzzzzzzzzzz"
  end

  def play
    puts "#@name is thinking com'on. throw me the stick"
  end

  def eat(food)
    if food == "carrot"
      puts "#@name says: blaaaach, I don't eat that"
    else
      puts "#@name is eating #{food} and thinking: mmmmmm yammy"
    end
  end

  def bite(person)
    if @friendly && person != @human_name
      puts "#@name says: I just bit you, ha ha"
    else
      puts "#@name says: I can't bite you, sorry!"
    end
  end

  def play_together(dog)
    if @friendly && dog.friendly
      puts "#@name is saying: hi #{dog.name}, wanna play?"
    else
      puts "Sorry, we can't play together, we don't get along"
    end
  end

  def present(person)
    puts "Hi, I am #@name, I am a #@breed (but that doesn't really matter) and my human's name is #{person.hum_name}"
  end
end

class Human
  attr_accessor :hum_name, :friendly, :dog_name, :gen

  def initialize(hum_name, friendly, dog_name, gen)
    @hum_name = hum_name
    @friendly = friendly
    @dog_name = dog_name
    @gen = gen
  end

  def present(dog)
    puts "Hi, I am #@hum_name and my dog's name is #{dog.name}"
  end
end

dogs = [chuchu = Dog.new("terrier", "chuchu", "david", false),
puma = Dog.new("beagle", "puma", "orly", true),
jimie = Dog.new("boxer", "jimie", "tal", false),
michel = Dog.new("mixed", "michel", "neta", true)]

david = Human.new("david", false, chuchu.name, "he")
orly = Human.new("orly", true, puma.name, "she")
tal = Human.new("tal", false, jimie.name, "she")
neta = Human.new("neta", true, michel.name, "she")


puts "the dogs in the daycare are:\n"
dogs.each {|dog| puts dog.name}
puts
chuchu.present(david)
michel.present(neta)
orly.present(puma)
david.present(chuchu)
chuchu.play
puma.sleap
puts
jimie.bite("orly")
puma.bite("neta")
chuchu.bite("david")
puts
puma.play_together(jimie)
puma.play_together(michel)
puts
puma.eat("carrot")
jimie.eat("pizza")
