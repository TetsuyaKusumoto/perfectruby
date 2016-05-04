# Numeric

p 0.zero?
p 3.zero?
p 0.nonzero?
p 3.nonzero?

p 356.integer?
p 3.6.integer?
p 3.real?
p Complex(1,2).real?

p 1+1
p 1-1
p 2 * 2
p 10/3

p 10%3
p 10**2

p 10.0 /3

# 比較演算

p 123 == 123
p 123 != 123
p 123 > 123
p 123 >= 123
p 123 < 123
p 123 <= 123
p 123 == 123.0

p %w(Alice Bob Charlie).sort {|a, b|
  a.length <=> b.length
}

p 1.4.round
p 1.4.ceil
p 1.5.floor
p 1.5.truncate

3.step 5 do |num|
  puts num
end

1.2.step 20, 0.2 do |num|
  puts num
end

p 1.odd?
p 2.even?

p 2.next
p 2.succ
p 2.pred

p 30.to_s
p 30.to_s(2)
p 30.to_s(8)
p 30.to_s(16)

p (65..70).map {|n| n.chr}

p '123'.to_i
p Time.now.to_i

1.upto 3 do |num|
  puts num
end

3.downto 1 do |num|
  puts num
end

3.times do |num|
  puts num
end

p 'Alice Bob Charlie'.include?('Bob')
p 'Highlight'.start_with?('High')

p 'Result: %04d' % 42

str = 'Pine'
p str << 'apple'

p str[4]
p str[4, 6]
p str[4..9]
p str[/[0-9]+/]

str = " hi ¥t "
p str.strip
p str.rstrip
p str.lstrip

p "hi  \n\n".chomp
p 'Users'.chop
p 'wooooooooo'.squeeze
p 'aabbccdd'.squeeze('abc')
p 'aabbccdd'.squeeze('a-c')

p 'ABC'.downcase
p 'abc'.upcase
p 'Abc'.swapcase
p 'tiTle'.capitalize

p '24-1-365'.gsub(/[0-9]+/, 'x')

p 'dam'.reverse

str = 'Alice, Bob, Charlie'
p str.split(/, \s+/, 2)

p 'Alice'.split(//)
p 'Alice'.each_char.to_a

p 'てにをは'.encoding
str = 'こんにちわ'
str.encoding
p new_str = str.encode(Encoding::EUC_JP)
p new_str.encoding

str = 'ruby5'

if matched = /[0-9]/.match(str)
  p matched
end

pattern = /\d{3}-\d{4}-\d{4}/
p pattern === '080-1234-5678'
p pattern === '03-1234-5678'

lines = "1234\nabcd"
p /\A\d+\z/ === lines
p /^\d+$/ === lines

/(B) to \1 to \1/ === 'B to B to C'
p $1
p $2

/(?<number>[0-9]+)/ === 'abc-123'
p Regexp.last_match[:number]

array = [4,4,2,3, 1,3,4]
p array.include?(4)

p [1,2,3] + [4,5]

p [4,4,2,3] - [4,3]

p [1, 2, 3] & [2, 3, 4]

p [1, 2, 3] * 2

p array[2]

p array[2, 2]
p array[2..4]
p array.values_at(1)
p array.values_at(1,3)
p array.first
p array.first(2)
p array.last
p array.last(2)
p array.sample
p array.sample(2)

ary = [[:foo, 4], [:bar, 2], [:baz, 3]]
p ary.assoc(:bar)

p array << 3
p array.push 3
p array.pop
p array.shift
p array.unshift 4
p array.select! {|v| v.even? }
p array.reject! {|v| v.even? }

array = [4,4,2,3, 1,3,4]

p array.delete 4
p array.delete_at 1
array = [4, [4, [2, 3]]]
p array.flatten

array = [4, 4, 2, 3]
array.sort!

array = ["fooo", "fooo", "fo", "foo"]
p array.sort_by! { |v| v.length }

array = [1, 3, 5, 7, 9]
p array.bsearch {|n| n > 6}
p array.bsearch {|n| n > 10}

array = [24, 1, 365]
p array.join
p array.join('-')

hash = {one: 1, two: 2}

hash.each do |key, val|
  puts "#{key}: #{val}"
end

hash.each_key do |key|
  puts key
end

hash.each_value do |key|
  puts key
end

hash = {}
hash[:foo] = 'bar'
p hash

hash.delete(:foo)
p hash

hash = {foo: 1, bar: 2, baz: 3}
hash.select! {|key, val| val.odd?}
p hash
p hash.reject! {|key, val| val.odd?}

a = {one: 'A', two: nil}
b = {two: 'B', three: 'C'}

p a.merge(b)

has_default = Hash.new {|hash, key| Time.now}
p has_default['foo']
sleep 1
p has_default['foo']

hash = {}
hash.fetch('foo', 'default')
hash.fetch('foo') {|key| key}

a = {one: 1, two: 2}.to_a
p a.assoc(:one)

ary = ['key1', 'one', 'key2', 'two']
p Hash[*ary]
ary = [['key1', 'one'], ['key2', 'two']]
p Hash[ary]

now = Time.now
p now.zone
p now.getutc
now.utc

p now.zone

p now.year
p now.month
p now.day
p now.hour
p now.min
p now.sec
p now.wday
p now.yday

past = Time.now
future = Time.now

p past <=> future
p past < future
p past > future

a = Time.now
sleep 1
b = Time.now

p b-a

p Time.utc(2011, 4, 1, 5, 30, 20, 100)
p Time.local(2011, 4, 1, 5, 30, 20, 100)

file = File.open('time.txt')
puts file.read
file.close

File.open 'time.txt' do |file|
  while line = file.gets
    puts line
  end
end

File.open 'time.txt' do |file|
  file.each_line do |line|
    puts line
  end
end

File.open 'time.txt', 'w' do |f|
  f.write 'Hello'
end

File.open 'counter', File::RDWR |File::CREAT do |f|
  f.flock File::LOCK_EX

  count = f.read.to_i
  f.rewind
  f.write count.succ
end

File.open 'counter' do |f|
  p f.atime
  p f.ctime
  p f.mtime
  p f.size
end

p Dir.pwd
p Dir.home
p Dir.entries('.')

require 'socket'

Process.daemon

TCPServer.open 'localhost', 4423 do |server|
  loop do
    client = server.accept
    client.puts Time.now
    client.close
  end
end
