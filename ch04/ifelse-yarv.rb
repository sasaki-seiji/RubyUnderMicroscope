code = <<END
i = 0
if i < 10
  puts "small"
else
  puts "large"
end
puts "done"
END
puts RubyVM::InstructionSequence.compile(code).disasm
