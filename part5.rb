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
