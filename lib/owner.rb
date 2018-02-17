require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(petFish)
    @pets.map do |key, index|
      if key == :fishes
    @pets[key] << Fish.new(petFish)
      end
    end
  end

  def buy_cat(petCat)
    @pets.map do |key, index|
      if key == :cats
    @pets[key] << Cat.new(petCat)
      end
    end
  end

  def buy_dog(petDog)
    @pets.map do |key, index|
      if key == :dogs
    @pets[key] << Dog.new(petDog)
      end
    end
  end

  def walk_dogs
  #binding.pry
    @pets[:dogs][-1].mood = "happy"
  end

  def play_with_cats
  #binding.pry
    @pets[:cats][-1].mood = "happy"
  end

  def feed_fish
  #binding.pry
    @pets[:fishes][-1].mood = "happy"
  end

  def sell_pets
    @pets.delete_if{|key, val| if key != nil}
      binding.pry
  end

  @@all = []

  def self.all
    @@all << self
  end



end
