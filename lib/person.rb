require "pry"
class Person
  attr_accessor :age, :name
  @@people = []
  def initialize(age, name)
    @@people.push(self)
    @age = age
    @name = name

  end
  def check_age
    if @age > 17
      p "This person can vote"
    else
      p "This person cannot vote"
      return
    end
  end
  def self.how_many
    p @@people.length
    return @@people

  end
  def say_name
    p "my name is #{self.name}"
  end
  def self.compare(person1, person2)
    person1 <=> person2
    if person1.age < person2.age then return p "#{person2.name} is older"
    elsif person1.age = person2.age then return p "#{person1.name} and #{person2.name} are the same age"
    elsif person1.age > person2.age then return p "#{person1.name} is older"
    end

  end

end

class LoudPerson < Person
  def say_name
    p "MY NAME IS #{@name.upcase}"
  end
  def annoying
    p "I am annoying"
  end

end
class QuietPerson < Person
  def say_name
    p "softly says: 'Hello I'm #{self.name}"
  end
end
class VeryLoudPerson < LoudPerson

  def say_age
    p "I AM #{@age} YEARS OLDDD"
  end
end
class TwoHeadedPerson < Person
  def initialize(age, name, second_name)
    @age = age
    @name = name
    @second_name = second_name
    @@people.push(self)
  end
  def say_second_name
    return @second_name
  end

end

Khoi = Person.new(27, "Khoi")
Cory = Person.new(28, "Cory")
Phil = Person.new(26, "Phil")
Steve = LoudPerson.new(16, "Steve")
Victoria = QuietPerson.new(30, "Victoria")
Bob = VeryLoudPerson.new(18, "Bob")
Cyclops = TwoHeadedPerson.new(200, "Cyclops", "2ndEye")

binding.pry
'End of file'
