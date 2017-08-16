code = <<END
class InstanceVariableTest
	attr_accessor :var
end

ivt = InstanceVariableTest.new
ivt.var = 13
puts ivt.var
END

puts RubyVM::InstructionSequence.compile(code).disasm
