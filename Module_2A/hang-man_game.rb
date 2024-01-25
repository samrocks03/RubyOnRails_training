# Putting things into class:
class Hangman
	#local instance method which will return the value of lives
	attr_reader :lives
	# Similarly, for the board
	attr_reader :board
	attr_reader :my_secret_word

	# -------INIT STATE------------
	def initialize
		@lives = 7
		@my_secret_word = word_List.sample
		@board = set_up_the_board
	end


	# ---------SETTING UP THE BOARD---------
	def set_up_the_board
		Array.new(my_secret_word.size){"_"}
	end


	# ---------BOARD STATE----------
	def board_state
		board.join(" ")
	end

	# --------WIN STATUS------------
	def won?
		board.join("") == my_secret_word
	end

	def lost?
		lives <= 0
	end

	# ---------WORD LIST------------
	def word_List
		[
			"dog",
			"elephant",
			"lion",
			"tiger",
			"albatrauss"
		]
	end

	# -------- MAKE GUESS -----------
	def make_guess
		print "Please guess a letter:"
		gets.chomp #implicit return occurs here
	end


	# ----------STARTING UP THE GAME--------------
	def start
		puts "Welcome To HANG_MAN
		Please enter a single character at a time"

		while @lives > 0 && !won?
			# print the num. of lives
			puts "\nYou have #{@lives} lives left."

			# print the board state
			puts board_state

			# receive our required guess
			guess = make_guess

			# update the board with relevant value
			update_board(guess)
		end

		if won?
			puts "You won!!"
		else
			puts "You lost!!"
			puts "Actual word was ~~#{@my_secret_word}~~"
		end
	end

	def update_board(guess)
		if my_secret_word.include?(guess)
			my_secret_word.each_char.with_index do |char, i|
				board[i] = char.downcase if char.downcase == guess.downcase
			end
		else
			@lives -= 1
		end
	end
end

game = Hangman.new
game.start
