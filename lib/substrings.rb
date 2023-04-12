def substrings(str, dictionnary)
  res = {}
  splitted_str = str.split(' ')
  dictionnary.each do |word|
    matches = splitted_str.select { |split| split.include?(word) }
    next if matches.empty?

    res[word] = matches.length
  end
  res
end