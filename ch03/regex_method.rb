str = "The quick brown fox juped over the lazy dog.\n"
/fox/.match(str)

def search(str)
  /dog/.match(str)
  puts "Value of $& inside method: #{$&}"
end
search(str)

puts "Value of $& in the top level scope: #{$&}"
