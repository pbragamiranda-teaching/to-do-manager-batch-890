class Cat
 # OOP
 # STATE + BEHAVIOR
  attr_reader :name

 def initialize(name, color)
  @name = name
  @color = color
 end

 def dye(color)
  @color = color
 end

end


# TESTING FILE

felix = Cat.new("Felix", "Black")

puts "The name of the cat is #{felix.name}"
p felix

puts "Moving to Berlin #newpunklife"
felix.dye("green")

p felix
