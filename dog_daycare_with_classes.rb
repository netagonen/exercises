class Dog
  attr_accessor :breed, :name, :human_name, :human_freinliness, :human_gen

  def initialize(breed, name, human_name, human_freinliness, human_gen)
    @breed = breed
    @name = name
    @human_name = human_name
    @human_freinliness = human_freinliness
    @human_gen = human_gen
  end

  def barking
    puts "#{name} says: wuf wuf!"
  end

  def eating
    puts "#{name} is thinking: mmmmmm yammy"
  end

  def sleaping
    puts "#{name} is actualy in...zzzzzzzzzzzzz"
  end

  def playing
    puts "#{name} is thinking com'on. throw me the stick"
  end

  def present
    puts "Hi, I am #{name}, I am a #{breed} (but that doesn't really matter), my human is #{human_name} and #{human_gen} is #{human_freinliness}"
  end
end

chuchu = Dog.new("terrier", "chuchu", "david", "not so friendly...", "he")
puma = Dog.new("beagle", "puma", "orly", "amazing", "she")
jimie = Dog.new("boxer", "jimie", "tal", "pritty nice", "she")
michel = Dog.new("mixed", "michel", "neta", "cute but askes to much q", "she")
dogs = [chuchu, puma, jimie, michel]

chuchu.present
michel.present
chuchu.playing
puma.sleaping

puts "the dogs in the daycare are:\n"
dogs.each {|dog| puts dog.name}
