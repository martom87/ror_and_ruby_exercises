require 'pry'

def Xo(str)

  input = str.to_s.upcase
  input.count('X').equal?(input.count('O'))

end


def solution(number)

  input = (1..(number - 1)).to_a
  output = []
  input.each do |i|
    while ((i % 5).equal?(0)) || ((i % 3).equal?(0))
      output << i
      break
    end
  end
  output.sum
end


def song_decoder(song)
  song.gsub("WUB", " ")
      .chars
      .join("")
      .split
      .join(" ")

end


puts song_decoder("AWUBBWUBC")
puts song_decoder("AWUBWUBWUBBWUBWUBWUBC")
puts song_decoder("WUBAWUBBWUBCWUB")
puts song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")



def order(words)
  ((words.split).sort_by! {|word| word[/\d+/].to_i}).join(" ")
end


#p (order("is2 Thi1s T4est 3a"))


=begin
def order2(words)
  temp = Has.new
  words.split("").each do |word|
    (word.split).each do |w|
      #if Integer(w)?
       #{:w => word}???????
      end
    end
  end
  temp.keys.sort
  temp.each do |word|
    word
  end
end

p order2("is2 Thi1s T4est 3a")
=end


def check_brackets_closed?(input)

      input.count("{").equal?(input.count("}")) &&
      input.count("(").equal?(input.count(")")) &&
      input.count("[").equal?(input.count("]"))
end


def check_brackets_not_reverted?(input)
      input.index("(")<input.index(")") &&
      input.index("{")<input.index("}") &&
      input.index("[")<input.index("]")
end

#p check_brackets_not_reverted?('The Fellowship of the {Ring} )( [Lord of The Rings {Peter Jackson}]')


#p check_brackets('The Fellowship of the Ring [Lord of The Rings {Peter Jackson}]')

#p check_brackets_closed?('The Fellowship of the Ring [Lord of The Rings {Peter Jackson}]')


def check_brackets_empty(input)
  input.split("{").last.split("}").first
end

def check_brackets_empty4(input)
end


p check_brackets_empty('The Fellowship of the {Ring} [Lord of The Rings {Peter Jackson}]')


def check_brackets_closed2?(str)
  stack = []
  symbols = {'{' => '}', '[' => ']', '(' => ')'}
  str.each_char do |c|
    stack << c if symbols.key?(c)
    return false if symbols.key(c) && symbols.key(c) != stack.pop
  end
  stack.empty?
  p symbols.key(c)
end


#p check_brackets_empty2?('The Fellowship of the {Ring} [Lord of The Rings {Peter Jackson}]')
#
#

#p 'The Fellowship of the {Ring} [Lord of The Rings {Peter Jackson}]'.split("{")
#
p check_brackets_empty('{{{{ }}}}')
p check_brackets_empty('{} {b}')

p check_brackets_empty4('{{{{ }}}}')
p check_brackets_empty4('{c}')

p check_brackets_closed2?('The Fellowship  } { } of the {Ring} [Lord of The Rings {Peter Jackson}]')

