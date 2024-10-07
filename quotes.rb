quotes=Array.new

puts "There are #{quotes.length} quotes now"

quote="I like Ramen"
puts "Adding #{quote}"
quotes.push(quote)
puts "There are #{quotes.length} quotes now"
quote="MoMo is good to"
puts "Adding #{quote}...."
quotes.push(quote)
puts "There are #{quotes.length} quotes now"
quote="I love Ruby"
puts "Adding #{quote}...."
quotes.push(quote)
puts "There are #{quotes.length} quotes now"

quote="I want to Ruby on Rails"
puts "Adding #{quote}...."
quotes.push(quote)
puts "There are #{quotes.length} quotes now"

quote="I want to become a web developer"
puts "Adding #{quote}...."
quotes.push(quote)
puts "There are #{quotes.length} quotes now"


puts "......."
puts "Generating random quote"

random_quote=quotes.sample
puts "Random quote at index #{quotes.index(random_quote)} : #{random_quote}"