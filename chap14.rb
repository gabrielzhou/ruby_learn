user = ARGV.first
prompt = '> '

puts "hi #{user}, i'm the #{$0} script."
puts "i'd like to ask you a few questions."
puts "do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "what kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
you live in #{lives}. not sure where that is.
and you have a #{computer} computer. nice
MESSAGE
