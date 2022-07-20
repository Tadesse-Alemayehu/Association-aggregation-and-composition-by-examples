class owner
  attr_accessor :mame
  attr_reader :animals

  def initialize(name)
    @mame=name
    @animals=[];
  end

  def add_animal(animal)
    @aimals.push(animal)
  end
end
