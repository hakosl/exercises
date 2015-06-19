#reverse string function

def reverse_string(string)
  output = string.split("").map.with_index do |letter, index|
    string[-(index + 1)]
  end
  output.join
end

puts reverse_string("hello")