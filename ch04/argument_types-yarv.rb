code = <<END
def five_argument_types(a, b = 1, *args, c, &d)
end

five_argument_types(1, 2, 3, 4, 5, 6) do
	puts "block"
end
END

puts RubyVM::InstructionSequence.compile(code).disasm
