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
  # ! We are using puts here to comply with the exercise, but would be better to return the value instead,
  # ! then use "puts substrings(str, dictionary)" to see the output
  puts res
  res
end

# Add TOP example so can be run with "ruby ./substrings.rb"

dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']

substrings('below', dictionary) # return { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# return { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1,
#          "part" => 1, "partner" => 1, "sit" => 1 }
