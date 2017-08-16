code = <<END
class InstanceVariableTest
	attr_reader :var
	attr_writer :var
end

ivt = InstanceVariableTest.new
ivt.var = 13
puts ivt.var
END

puts RubyVM::InstructionSequence.compile(code).disasm
