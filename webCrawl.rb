possible_strings = ('A'..'Z').to_a + ('0'..'9').to_a

def random_string(array_of_letters, hash_array)
  returnstring = ""
  hash_array.each do |hash|
	  returnstring += random_char(array_of_letters, hash)
  end
  returnstring
end

def random_char(array_of_letters, hash)
  array_of_letters[hash].to_s
end

def try_all_possible (array_of_letters, chars)
  hash = Array.new(chars, 0)
  full_index = 0
  until hash_end(hash)
    if hash.include?(35)
      full_index = hash.index(35)
      hash[full_index - 1] += 1
    else
      hash[-1] += 1
    end
    p hash
    p random_string(array_of_letters, hash)
  end
end


def hash_end (hash)
  hash.each do |hash_number|
    if not hash_number == 35
      return false
    end
  end
  true
end

try_all_possible(possible_strings, 10 )
#puts hash_end([34,35,35,35,35,35,35,35])
#puts random_string(possible_strings, [-1,-2,-4,-5,-6,-7,-8,-9,35])