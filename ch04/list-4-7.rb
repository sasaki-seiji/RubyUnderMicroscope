class InstanceVariableTest
	def var
		@var
	end
	def var=(val)
		@var = val
	end
end

ivt = InstanceVariableTest.new
ivt.var = 13
puts ivt.var
