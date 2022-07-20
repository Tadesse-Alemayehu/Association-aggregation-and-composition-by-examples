require_relative 'animal'

class Owner
  attr_accessor :name
  attr_reader :animals

  def initialize(name)
    @name=name
    @animals=[]
  end

  def add_animal(animal)
    @animals.push(animal)
    animal.owner=self
  end
end

animal=Animal.new(4, 4, 'Rex')
owner=Owner.new('tadesse alemayehu ')
owner.add_animal(animal)
puts owner.animals
