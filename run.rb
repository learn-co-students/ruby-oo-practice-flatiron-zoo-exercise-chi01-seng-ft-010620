require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

dave = Zoo.new("Dave's Zoo", "Chicago")
another = Zoo.new("LP", "Chicago")
milwaukee = Zoo.new("Less Zoo", "Milwaukee")
cat = Animal.new("cat", 12, "my cat", dave)
dog = Animal.new("dog", 25, "my dog", another)
cat2 = Animal.new("cat", 14, "Jazz", dave)
dog2 = Animal.new("dog", 32, "Spots", dave)
# p Animal.all
p Animal.find_by_species("cat")
#Test your code here


# binding.pry
puts "done"
