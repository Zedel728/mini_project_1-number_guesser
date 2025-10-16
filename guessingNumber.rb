# For this mini project, I will be making a number guesser
# It should be able to receive input from users, generate
# a random number, and provide feedback on if user's guess
# was close to the generated number



# Randomize number to guess.
random_num = Random.rand(1..100)

# Defines how to guess (reads user imput and store in global variable).
# Initial variable $guess is used to detect if user types 'exit' to end game early.
# Converts $guess to integer with #to_i, storing it to a global variable called $int_guess.
def guessing
  puts
  puts "Guess a number!"
  $guess = gets.chomp
  $int_guess = $guess.to_i
end

# Define how to play the game and start by guessing.
puts "Welcome to number guesser! Guess a number between 1-100.
You can also exit the game early by typing in 'exit'. Have fun!"
guessing

# User continues to guess until guess is the same as random number.
# converting a string from variable $guess to an integer with #to_i results with 0
until $int_guess == random_num
  #exits game when typed 'exit'
  return if $guess == "exit"

  puts "The guess: '#{$guess}' was not accepted. Try again." if $int_guess == 0 
  puts "The generated number is smaller than #{$int_guess}." if $int_guess > random_num 
  puts "The generated number is bigger than #{$int_guess}." if $int_guess < random_num && $int_guess != 0
  guessing
  
end

# Congratulates user for winning
puts
puts "You have guessed the number correctly! Congratulations!"