# 独自の演算子を定義
class MyObject
  def ==(other)
    self.class == other.class
  end
end

p MyObject.new == MyObject.new

#同値性
a = 'Alice'
b = 'Alice'

p a == b
p a.equal?(b)

# 条件分岐
n=2
if n.zero?
  p '0でした'
elsif n.even?
  p '偶数でした'
elsif n.odd?
  p '奇数でした'
else
  p 'わかりません'
end

n = 1
unless n.zero?
  p '0でありませんでした'
else
  puts '0でした'
end

result = n.zero? ? '0でした' : '0でありませんでした'
puts result

puts '0でした' if n.zero?
puts '0ではありませんでした' unless n.zero?

stone = 'ruby'

case stone

when 'ruby'
  puts '7月'
when 'peridot', 'shadonyx'
  puts '8月'
else
  puts 'よくわかりません'
end

detected =
  case stone
  when /ruby/
    '7月'
  when /peridot|sardonyx/
    '8月'
  else
    'よくわかりません'
  end

puts detected

case stone
when /ruby/     then '7月'
when /peridot|sardonyx/ then '8月'
else 'よくわかりません'
end

# 繰り返し
languages = %w(Perl Python Ruby)
i = 0
while i < languages.length
  puts "Hello, #{languages[i]}"
  i += 1
end

for name in %w(Alice Bob Carol)
  puts name
end

puts name

for val in {a: 1, b: 2}
  puts val[0]
  puts val[1]
end

for key, val in {a: 1, b: 2}
  puts key
  puts val
end

2.times do
  puts 'こんにちわ'
end

languages = %w(Perl Python Ruby Smalltalk JavaScript)

languages.each do |language|
  puts language
  if language == 'Ruby'
    break 'I found Rubby!!'
  end
end

#例外
#raise 'error!'

begin
  #raise StandardError, 'error!'
rescue => e
  puts "Error occurred (#{e.class})"
  p e.class
  p e.message
  p e.backtrace
else
  p 'OK'
ensure
  p "ensure"
end

catch :triple_loop do
  loop do
    p 'one'
    loop do
      p 'two'
      loop do
        p 'three'
        throw :triple_loop
      end
    end
  end
end

catch :entire do
  p "entire"
  catch :process do
    p "process"
    throw :entire
  end
end

# yield
def block_sample
  puts 'stand up'
  yield if block_given?
  puts 'sit down'
end

block_sample
block_sample do
  puts 'walk'
end

def display_value
  puts yield
end

display_value do
  4423
end

display_value do
  next 42
end

display_value do
  break 42
end

def with_current_time
  yield Time.now
end

with_current_time do |now|
  puts now.year
end

def default_argument_for_block
  yield
end

default_argument_for_block do |val = 'Hi'|
  puts val
end

def flexible_arguments_for_block
  yield 1,2,3
end

flexible_arguments_for_block do |*params|
  puts params.inspect
end

def block_sample(&block)
  puts 'stand up'

  block.call if block
  puts 'sit down'
end

block_sample do
  puts 'walk'
end

1/0 rescue false

people = %w(Alice Bob Charlie)
block = Proc.new {|name| puts name}
people.each &block

p2 = :upcase.to_proc
p p2.call('hi')

p people.map {|person| person.upcase}
p people.map(&:upcase)

def write_with_lock
  File.open 'time.txt', 'w' do |f|
    f.flock File::LOCK_EX

    yield f

    f.flock File::LOCK_UN
  end
end

write_with_lock do |f|
  f.puts Time.now
end

people = []
%w(Alice Bob Chalie).each do |person|
  people << person
end

p people

system('uname')

#exec 'uname'
#puts 'hello'
str = 'abc'
p str.reverse
p str
p str.reverse!
p str

class Ruler
  attr_accessor :length
  def self.pair
    [new, new]
  end
end

p Ruler.pair

class Foo
  def override_me
    puts "in Foo class"
  end
end

bar = Foo.new
def bar.override_me
  super
  puts "in singleton method"
end



bar.override_me
__END__

p "END"
