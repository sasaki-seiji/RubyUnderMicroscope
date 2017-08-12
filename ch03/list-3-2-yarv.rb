code = <<END
10.times do
  puts "The quick brown fox jumps over the lazy dog."
end
END

puts RubyVM::InstructionSequence.compile(code).disasm
