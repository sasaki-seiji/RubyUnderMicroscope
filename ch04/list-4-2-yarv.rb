code = <<END
10.times do |n|
  puts n
  break
end
puts "conitinue from here"
END
puts RubyVM::InstructionSequence.compile(code).disasm
