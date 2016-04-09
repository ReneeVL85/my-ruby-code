class Parrot
  def initialize(name, color)
    @name = name
    @color = color
  end
  def sound
    p "#{@name} says hello"
  end
  def looks
    p "#{@name} is #{@color}"
  end
end
