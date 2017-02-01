class Dog
  attr_accessor :breed, :name, :human_name, :friendly, :human_gen
  #attr_reader = for getters
  #attr_writer = for setlers

  def initialize(breed, name, human_name, friendly, human_gen)
    @breed = breed
    @name = name
    @human_name = human_name
    @friendly = friendly
    @human_gen = human_gen
  end

  def barking
    puts "#@name says: wuf wuf!"
  end

  def eating(food)
    if food == "carrot"
      puts "#@name says: blaaaach, I don't eat that"
    end
    puts "#@name is eating #{food} and thinking: mmmmmm yammy"
  end

  def sleaping
    puts "#@name is actualy in...zzzzzzzzzzzzz"
  end

  def playing
    puts "#@name is thinking com'on. throw me the stick"
  end

  def bite(person)
    if @friendly && person != @human_name
      puts "I just bit you, ha ha"
    else
      puts "#@name says: I can't bite, sorry!"
    end   
  end

  def play_together(dog)
    if @friendly && dog.friendly
      puts "#@name is saying: hi #{dog.name}, wanna play?"
    else
      puts "Sorry, we can't play together, we don't get along"
    end
  end

  def present
    puts "Hi, I am #@name, I am a #@breed (but that doesn't really matter) and my human's name is #@human_name"
  end
end

dogs = [chuchu = Dog.new("terrier", "chuchu", "david", false, "he"),
puma = Dog.new("beagle", "puma", "orly", true, "she"),
jimie = Dog.new("boxer", "jimie", "tal", false, "she"),
michel = Dog.new("mixed", "michel", "neta", true, "she")]

puts "the dogs in the daycare are:\n"
dogs.each {|dog| puts dog.name}
chuchu.present
michel.present
chuchu.playing
puma.sleaping
puts
jimie.bite("orly")
puma.bite("neta")
chuchu.bite("david")
puts
puma.play_together(jimie)
puma.play_together(michel)
puts
