code = <<END
def display_string(str)
  puts str
end
display_string "method argument"
END
puts RubyVM::InstructionSequence.compile(code).disasm
