grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
puts grades

# options = { :font_size => 10, :font_family => "Arial" }
options = { font_size: 10, font_family: "Arial" }
puts options
puts options[:font_size]

class Person
  def self.create(params)
    @name = params[:name]
    @age  = params[:age]
  end
end

# create is a class method
p1 = Person.create(name: "John Doe", age: 27)
puts p1
# p2 = Person.create({ name: "John Doe", age: 27 })
# puts p2

class Person
  def initialize(params)
    @name = params[:name]
    @age  = params[:age]
  end
  attr_accessor :name, :age
end
p1 = Person.new(name: "John Doe", age: 27)
puts p1
p1.age = 37
puts p1
