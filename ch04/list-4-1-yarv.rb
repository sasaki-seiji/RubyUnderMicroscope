code = <<END
i = 0
while i < 10
  puts i
  i += 1
  break
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
