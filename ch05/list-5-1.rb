class Mathematician
	attr_accessor :first_name
	attr_accessor :last_name
end

euler = Mathematician.new
euler.first_name = 'Leonhard'
euler.last_name = 'Euler'
p euler

euclid = Mathematician.new
euclid.first_name = 'Euclid'
p euclid

