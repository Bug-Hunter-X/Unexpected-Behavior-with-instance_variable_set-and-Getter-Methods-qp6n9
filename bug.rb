```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.instance_variable_set(:@value, 20)
puts my_object.value # => 20

# Unexpected behavior when using instance_variable_get and instance_variable_set 
# in conjunction with a method that accesses the instance variable.
my_object.instance_variable_set(:@value, 30)
puts my_object.value # => 30 
puts my_object.instance_variable_get(:@value) # => 30

my_object.instance_variable_set(:@value, 40)
puts my_object.instance_variable_get(:@value) # => 40
puts my_object.value # => 40

# modifying @value directly will not be reflected in value method
my_object.instance_variable_set(:@value, 50)
puts my_object.value # => 40 (Expected 50)
```