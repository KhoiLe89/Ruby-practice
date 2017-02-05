require "pry"

class Orange_tree
  attr_accessor :height, :age

  def initialize(user_input)
    age = 0
    oranges = 0
    @oranges = oranges
    @age = age
    @height = user_input
    p "#{@height}ft and #{@age} years old"
  end
  def height
    return @height
  end
  def one_year_passes
    if @age > 49
      p "Tree is now #{@height}ft and #{@age} years old. It has died."
    elsif @age > 4
      @oranges = @oranges + 20
      p "Tree is now #{@height}ft and #{@age} years old. Has bore #{@oranges}"
    else
        @age = age + 1
        @height = @height + 1
        p "Tree is now #{@height}ft and #{@age} years old"
    end
  end
  def count_oranges
    return @oranges
  end
  def pick_an_orange
    if @oranges > 0
    @oranges = @oranges - 20
    return @oranges
  else
    p "You can't take anymore oranges!"
    return 
  end
  end
end



binding.pry
p "end of file"
