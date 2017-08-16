def five_argument_types(a, b = 1, *args, c, &d)
	puts "Standard argument #{a.inspect}"
	puts "Optional argument #{b.inspect}"
	puts "Splat argument array #{args.inspect}"
	puts "Post argument #{c.inspect}"
	puts "Block argument #{d.inspect}"
end

five_argument_types(1, 2, 3, 4, 5, 6) do
	puts "block"
end

