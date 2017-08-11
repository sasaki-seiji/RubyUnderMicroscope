code = <<END
def add_two_optional(a, b = 5)
  sum = a + b
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
