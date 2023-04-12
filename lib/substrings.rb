# Return hash listing each substring (= dictionnary) that was found in the string
def substrings(str, dictionnary)
  res = {}
  splitted_str = str.split(' ')
  dictionnary.each do |word|
    word.downcase!
    matches = splitted_str.select { |split| split.downcase.include?(word) }
    next if matches.empty?

    res[word] = matches.length
  end
  res
end

# Add TOP example so can be run with "ruby ./substrings.rb"

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts "Dictionary is : #{dictionary}"
puts
puts 'Results for string "below" :'
puts substrings('below', dictionary) # return { "below" => 1, "low" => 1 }
puts
puts "Results for string \"Howdy partner, sit down! How's it going?\" :"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# return { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1,
#          "part" => 1, "partner" => 1, "sit" => 1 }
