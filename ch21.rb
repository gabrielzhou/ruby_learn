def add(a, b)
	puts "Adding #{a} + #{b}"
	a + b
end

def substract(a,b)
	puts "substract #{a} - #{b}"
	a - b
end

def multiply(a,b)
	puts "multiply #{a} * #{b}"
	a * b
end

def divide(a,b)
	puts "Dividing #{a} / #{b}"
	a / b
end

puts "let's do some math with just functions!"

age = add(30, 5)
height = substract(78,4)
weight = multiply(90,2)
iq = divide(100,2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "here is a puzzle。"

what = add(age,substract(height, multiply(weight, divide(iq,2))))
puts "That becomes: #{what} can you do it by hand?"
