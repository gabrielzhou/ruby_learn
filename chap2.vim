function! Chap2()
	ruby <<EOF
	 puts 3+2+1
	 puts "Is it true that 3 + 2 <5 - 7?"
	 puts 3.2*6.4
EOF
endfunction

function! Chap3()
	ruby <<EOF
	cars = 100
	space_in_a_car = 4.0
	drivers = 30
	passengers = 90
	cars_not_driven = cars -drivers
	cars_driven = drivers
	carpool_capacity = cars_driven * space_in_a_car
	average_passengers_per_car = passengers / cars_driven
	puts "there are #{cars} cars available."
	puts "there are only #{drivers} drivers available."
	puts "there will be #{cars_not_driven} empty cars today."
	puts "we can transport #{carpool_capacity} people today."
	puts "we have #{passengers} passengers to carpool today."
	puts "we need to put about #{average_passengers_per_car} in each car."
EOF
endfunction

function! RedGem()
	ruby << EOF
	class Garnet
		def initialize(s)
			@buffer = Vim::Buffer.current
			vimputs(s)
		end
		def vimputs(s)
			@buffer.append(@buffer.count,s)
		end
	end
	gem = Garnet.new("pretty")
EOF
endfunction

function! Chap4()
	ruby <<EOF
          my_name = 'Zed A. Shaw'
          my_age = 35 # not a lie
          my_height = 74 # inches
          my_weight = 180 # lbs
          my_eyes = 'Blue'
          my_teeth = 'White'
          my_hair = 'Brown'
          
          puts "Let's talk about %s." % my_name
          puts "He's %d inches tall." % my_height
          puts "He's %d pounds heavy." % my_weight
          puts "Actually that's not too heavy."
          puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
          puts "His teeth are usually %s depending on the coffee." % my_teeth
          
          # this line is tricky, try to get it exactly right
          puts "If I add %d, %d, and %d I get %d." % [
my_age, my_height, my_weight, my_age + my_height + my_weight]
EOF
endfunction

function! Chap5()
	ruby <<EOF
	puts "Mary had a liite lamb."
	puts "its fleece was white as %s." % 'snow'
	puts "and everywhere that mary went."
	puts "." * 10
        end1 = "C"
	end2 = "h"
	print end1 + end2
	puts
EOF
endfunction

function! Chap6()
	ruby <<EOF
	formatter = "%s %s %s %s"

	puts formatter %[1, 2 ,3, 4]
	puts formatter % ["one", "two", "three", "four"]
		puts formatter % [true, false, false, true]
	puts formatter % ["i had this thing", "that you could type up rigth", "but it didn't sing", "so i daid good night."]
EOF
endfunction
