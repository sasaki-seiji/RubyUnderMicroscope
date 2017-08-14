code = <<END
def display_string
  str = "Local access."
  puts str
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
