# encoding:utf-8

p 'hello'.class
p String.ancestors

puts 'こんにちわ'

1.upto(2) do |n|
  puts n
end

1.upto(2) { |n| puts n}

def hello(names)
  names.each do |name|
    puts "HELLO, #{name.upcase}"
  end
end

def add(a, b)
  a + b
  a - b
end

rubies = ['MRI', 'jruby', 'rubinius']

hello(rubies)

p add(1, 1)

foo = "foo in toplevel"

def display_foo
  puts foo
end

puts foo
#display_foo

greeting = "Hello, "
people = ['Alice', 'Bob']

people.each do |person|
  puts greeting + person
end

#puts person

$foobar = 'barbaz'
puts $foobar
p $undefined

FOO_BAR = 'bar'
FOO_BAR = 'foo'

puts FOO_BAR

if true
  puts 'Ping'
end
