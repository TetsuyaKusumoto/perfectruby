if true
  puts 'Ping'
end

str = 'Ping'

if str
  puts str
end

if false
  puts 'Ping'
else
  puts 'Pong'
end

n = 2

if n.zero?
  puts '0でした'
elsif n.even?
  puts 'ぐう数でした'
elsif n.odd?
  puts '奇数でした'
else
  puts 'わかりません'
end

# 式
val = 'Hello'
if true
  'Hello'
end

p val
p 4423

#クラス
class MyClass
  def hello
    puts 'Hello, My object!'
  end
end

my_object = MyClass.new
my_object.hello

#インスタンス変数
class Ruler
  def length=(val)
    @length = val
  end

  def length
    @length
  end
end

ruler = Ruler.new
ruler.length = 30
p ruler.length

#シンタックスシュガー
class Ruler2
  attr_accessor :length
end

ruler = Ruler2.new
ruler.length = 40
p ruler.length

# self
class Ruler3
  attr_accessor :length

  def display_length
    puts length
  end

  def set_default_length
    self.length = 30
  end
end

ruler = Ruler3.new
ruler.length = 50

ruler.display_length
ruler.set_default_length
p ruler.length

# 初期化
class Ruler4
  attr_accessor :length

  def initialize(length)
    @length = length
  end
end

ruler = Ruler4.new(40)
p ruler.length

# クラスメソッド
class Ruler5
  attr_accessor :length

  def self.pair
      [Ruler5.new, Ruler5.new]
  end
end

p Ruler5.pair

class MyClass2
  @@cvar = 'Hello, My class variable!'

  def cvar_in_method
    puts @@cvar
  end

  def self.cvar_in_class_method
    puts @@cvar
  end
end

my_object = MyClass2.new

my_object.cvar_in_method
MyClass2.cvar_in_class_method

#継承

class Parent
  def hello
    puts 'Hello, Parent class!'
  end
end

class Child < Parent
  def hi
    puts 'Hello, Child class!'
  end
  def hello
    super
    puts 'Hello, Child class!'
  end
end

child = Child.new
child.hello
child.hi

#module
module Brainfsck
  class Parser
    p "hello"
  end
end

module Whitespace
  class Parser
    p "こんにちわ"
  end
end

Brainfsck::Parser
Whitespace::Parser

#文字列
puts 'result:\t#{1+1}'
puts "result:\t#{1+1}"

paragraph = "99 bottles of beer on the wall, \
99 bottles of beer."
p paragraph

#配列
people = ['alice', 'bob', 'carol']
p people[2]
people[5] =  'kusumoto'
p people

p %w(Alice Bob Carol)
p %i(red green blue)

#hash
colors = {'red' => 'ff0000', 'green' => '00ff00', 'blue' => '0000ff'}
p colors
colors2 = {:red => 'ff0000', :green => '00ff00', :blue => '0000ff'}
p colors2

#range
p (1..5).include?(5)
p (1...5).include?(5)

#正規表現
pattern = /[0-9]+/

p pattern === 'HAL 9000'
p pattern === 'Space 0dyssey'

p pattern =~ 'HAL 9000'
p pattern =~ 'Space odyssey'

p %q{paren(and paren)}
p %r{/usr/(bin|lib)/}

#手続きオブジェクト
greeter = Proc.new { |name|
  puts "Hello, #{name}!"
}
greeter.call 'Proc'
greeter.call 'Ruby'

p by_proc = proc {|name| puts "Hello, #{name}!"}
p by_lambda = lambda {|name| puts "Hello, #{name}!"}
p by_literal = ->(name) { puts "Hello, #{name}!"}

#多重代入
a, b = 1, 2
p a, b

# 自己代入
a = 1
p a
a += 1
p a
b ||= 2
p b

# 例外処理
begin
  1 / 0
rescue ZeroDivisionError
  puts '何か問題が発生しました。'
end
