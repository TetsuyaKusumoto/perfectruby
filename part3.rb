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
