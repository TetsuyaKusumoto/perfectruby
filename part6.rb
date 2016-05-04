class FirstClass
end

SecondClass = Class.new(FirstClass)
p SecondClass.superclass
p SecondClass.name
klass = Class.new
p klass.name

class InstanceCountClass
  @instance_count = 0

  def self.instance_count
    @instance_count
  end

  def self.instance_count_up
    @instance_count += 1 if @instance_count
  end

  def initialize
    self.class.instance_count_up
  end
end

p InstanceCountClass.instance_count

5.times do
  InstanceCountClass.new
end

p InstanceCountClass.instance_count

class NewInstanceCountClass < InstanceCountClass
end

NewInstanceCountClass.instance_count

5.times do
  NewInstanceCountClass.new
end

p InstanceCountClass.instance_count
p NewInstanceCountClass.instance_count
