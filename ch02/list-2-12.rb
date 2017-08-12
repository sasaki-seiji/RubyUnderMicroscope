def complex_formula(a, b, *args, c)
  a + b + args.size + c
end

puts complex_formula(1,2,3)
puts complex_formula(1,2,3,4)
puts complex_formula(1,2,3,4,5)
