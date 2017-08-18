p str = "some string value"
p str.instance_variables
p str.instance_variable_set("@val1", "value one")
p str.instance_variables
p str.instance_variable_set("@val2", "value two")
p str.instance_variables

