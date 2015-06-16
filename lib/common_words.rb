require 'pry'

def most_common(string)
  new_string = string.downcase.gsub(/[^a-z']/, ' ')
  array = new_string.split(' ')
  array_unique = array.uniq

  # new_array = []

  # array_unique.each do |element|
  #   new_array << [element, array.count(element)]
  # end

  hash = {}

  array_unique.each do |element|
    hash[element] = array.count(element)
  end

  sorted_hash = hash.sort_by { |key, value| value }.reverse

  # binding.pry

  if sorted_hash[0][1] == sorted_hash[1][1]
    return sorted_hash[0][0], sorted_hash[1][0]
  else
    return sorted_hash[0][0]
  end

end


#
#
# most_common("a short list of words with some short words in it")
