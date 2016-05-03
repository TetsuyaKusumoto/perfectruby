class Ruler
  attr_accessor :length

  def initialize(length)
    self.length = length
  end

  def ==(other)
    length == other.length
  end
end

r1 = Ruler.new(30)
r2 = Ruler.new(30)

p r1 == r2
p r1 != r2

o = Object.new

o.freeze
o.frozen?

#o.extend Enumerable

#オブジェクトのコピー
original = Object.new

original.object_id
original.freeze

copy_dup = original.dup
copy_dup.object_id
p copy_dup.frozen?

copy_clone = original.clone
p copy_clone.frozen?

value = 'foo'
array = [value]
array_dup = array.dup
array_clone = array.clone

p value.object_id
p array_dup[0]
p array_clone[0]

#汚染されたオブジェクト

$SAFE
p Object.new.tainted?
p ENV['HOME'].tainted?

o = Object.new
p o.tainted?
o.taint
p o.tainted?
