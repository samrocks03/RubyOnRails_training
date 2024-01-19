# Putting things into class:

class Game
    attr_reader :lives,:board,:my_secret_word
    # -------INIT STATE------------
    def initialize(word_List)
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

    # -------- MAKE GUESS -----------
    def make_guess
        print "Please guess a letter:"
        gets.chomp #implicit return occurs here
    end

    def update_board(guess)
        if my_secret_word.include?(guess)
            i = 0
            while i < my_secret_word.size
                # if the guess was "A" -> it gives 'a'
                if guess.downcase == my_secret_word[i].downcase                
                    board[i] = my_secret_word[i]
                end
                i += 1
            end
        else
            @lives -= 1
        end
    end
end


# Inheriting from the Game class to create our HangMan Game
class Hangman < Game
    #local instance method which will return the value of lives
    def initialize
        super(["dog","elephant","lion","tiger","albatrauss"])
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
end


game = Hangman.new
game.start