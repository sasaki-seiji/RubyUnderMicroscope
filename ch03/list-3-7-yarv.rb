code = <<END
def display_string
  str = "Dynamic access"
  10.times do 
    10.times do
      puts str
    end
  end
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
