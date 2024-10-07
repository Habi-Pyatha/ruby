# countries=[]
# countries.push("Nepal")
# countries.push("Japan")
# countries.push("Malaysia")

# countries.each do |country|
#   puts "#{country} is Awesome!"
# end

# i=0
# while(i<5) do
#   puts i
#   i +=1
# end

# 10.times do |i|
#   puts i
# end

# 2.upto(8) do|n|
#   puts n
# end

# 10.downto(0) do |n|
#   puts n
# end

puts "Enter the sentence"
sentence=gets.chomp.downcase
puts "Counting Words"
parts=sentence.split(" ")
puts "#{parts}"
parts.each do |part|
  count=0
    parts.each do |check|
      if part==check
        count+=1
      end
    end
    puts "#{part} appeared #{count} times in this sentence"
end
