filename = ARGV.first
script = $0

puts "we're going to erase #{filename}."
puts "if you don't want that, hit ctrl-c(^C)."
puts "if you do want that, hit return."

print "? "
STDIN.gets

puts "opening the file..."
target = File.open(filename, 'a')

puts "truncating the file. goodbye!"
target.truncate(target.size)

puts "now i'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "i'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()
