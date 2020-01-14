class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name 
        @location = location
        @@all << self
    end 

    def self.all
        @@all
    end 

    def animals
        Animal.all.select { |animals| animals.zoo == self}
    end 

    def animal_species
        animals_array = animals.map { |animals| animals.species}
        animals_array.uniq
    end 

    def find_by_species(species)
        animals.select do |animals| 
            animals.species == species
        end 
    end 

    def animal_nicknames
        animals.map { |animals| animals.nickname}
    end 

    def self.find_by_location(location)
        @@all.select { |zoos| zoos.location == location}
    end 

end
