def echo(string)
  string.to_s
end

def shout(string)
  string.to_s.upcase
end

def repeat(string, num=2)
  word = string.to_s
  sentence = word

  (num-1).times do
    sentence += " #{word}"
  end
  sentence
end

def start_of_word(string, position=1)
  string[0..position-1]
end

def first_word(string)
  word = string.scan(/\w+/)
  word[0]
end

def titleize(string)
  title = string.scan(/\w+/)
  little_words = %w{and over the}
  
  title.map! { |word| word.capitalize }
  title.map! do |word|
    if little_words.include? (word.downcase)
      word.downcase
    else
      word
    end
  end
  title[0].capitalize!
  title.join(" ")
end

=begin
word_bank = string.split
low_case_words = %w{and over the}.join(" ")
word_bank.map! do |word| 
  if word.scan(/low_case_words/)
    word
  else 
    word.capitalize
  end
end
word_bank[0].capitalize
word_bank.join(" ")
=end