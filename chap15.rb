filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts "here's your file: #{filename}"
puts txt.read()

puts "type the filename again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
