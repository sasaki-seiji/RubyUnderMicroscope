str = "The quick brown fox juped over the lazy dog.\n"
/fox/.match(str)

2.times do
  /dog/.match(str)
  puts "Value of $& inside block: #{$&}"
end

puts "Value of $& in the top level scope: #{$&}"
