-begin
Name: Javian Trotman
This is a simple project I used to in learning Ruby
-end

#get input
puts "hi, please enter a value"
text = gets.chomp
#break sentence into words
words = text.split(" ")
#creat hash, set default value
frequencies = Hash.new(0)
#create histogram using hash
words.each{ |word| frequencies[word] += 1 }
#sorting 
frequencies = frequencies.sort_by do |word, count| 
    count
end
frequencies.reverse!
#display word count
frequencies.each{ |word, count| puts word + " " + count.to_s }
