# Get my number game
# Written by: Jonathan Rivers

# Greet User
puts "Let's play guess my number!"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome #{name}! Let's do this."

# Set my number from a random number from 1 - 100
my_number = rand(100) + 1

# Set guess counter and guess status
number_guesses = 0
guessed_it = false

puts "Can you guess what number I'm thinking of?", "It's a number between 1 and 100"

until number_guesses == 10 || guessed_it
    puts "You have #{ 10 - number_guesses } guesses left."
    
    print "What number am I thinking of? "
    guess = gets.to_i
    if guess < my_number
        puts "No, that's not it. You guessed too LOW."
        number_guesses += 1
    elsif guess > my_number
        puts "No, that's not it. You guessed too HIGH"
        number_guesses += 1
    elsif guess == my_number
        puts "That's correct #{name}!!! You just guessed my number."
        guessed_it = true
    end
end

unless guessed_it 
    puts "Sorry, but you didn't guess my number", "press the up arrow key then Enter to play again."
end