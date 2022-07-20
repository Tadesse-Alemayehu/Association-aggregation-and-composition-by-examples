# frozen_string_literal: true
require_relative 'remover'
class Animal
  attr_accessor :name,:owner

  def initialize(type, number_of_legs, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end

  def remove_leg
    remover = Remover.new
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def speak
    puts 'Bla bla bla'
  end
  attr_reader :id, :type, :number_of_legs

  def owner=(owner)
    @owner=owner
    owner.animals.push(slef) unless owner.animals.include?(self)
  end
end

# animal_1 = Animal.new(4, 4, 'Rex')
# animal_2 = Animal.new(8, 3)

# animal_1.speak
# puts animal_2.id
# puts animal_1.owner
