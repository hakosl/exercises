def sum_loop(values)
  output = 0
  #puts "debug values: #{values}"
  values.each do |value|
  	#puts value.class
    output += value.to_i
  end
  output
end
puts "numbers please:"
puts sum_loop(gets.split(" "))