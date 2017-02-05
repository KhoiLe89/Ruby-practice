class Monkey
  attr_accessor :name, :species
  attr_reader :foods_eaten
  def initialize(name, species)

    @name = name.capitalize
    @species = species
    @foods_eaten = []
  end
  def eat(food)
    @foods_eaten.push(food) unless ["a", 'e', 'i', 'o', 'u'].include? (food[0].downcase)
  end
  def introduce
    p "Hello my name is #{@name} and I am a #{@species} monkey. I've recently eaten #{@foods_eaten}"
  end
end
