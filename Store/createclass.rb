class Cat
 attr_accessor :name

  def initialize(name, fur_color)
    @name = name
    @fur_color = fur_color
  end
  def sound
    puts "#{@name} says prrrr"
  end
end


cat1 = Cat.new("Benji","White")
cat2 = Cat.new("Sally","Brown")

puts cat1
puts cat2
