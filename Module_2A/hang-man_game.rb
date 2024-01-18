
list_of_wrds = ["dog","cat","rat","elephant","horse"]



# To get random element from array! 
my_secret_word = list_of_wrds.sample
puts "the secret word is #{my_secret_word}"
board = Array.new(my_secret_word.size){"_"}

puts board.join(" ")

lives = 7
while lives>0 && board.include?("_")
    puts "You have #{lives} lives left! "
    print "Please guess a letter:"
    # .chomp : string method to remove the white space at the end
    guess = gets.chomp
    # p guess #just for testing HeHe
    puts "your guess was : #{guess}"

    if my_secret_word.include?(guess)
        """
            If any of the letters in `my_secret_word` does match,
            then update the `board` location of the matching letters 
            to reveal the guessed word 
        """
    
        # pass a block with char and index
        my_secret_word.chars.each_with_index do |ch,ind| 
            if ch == guess
                board[ind] = ch #if, ch is guess, then update board's ind with ch
            end    
    end
    else
        lives = lives-1
        puts "The word didn't include #{guess}"
        if lives == 0
            puts "Sorry! you failed the game"
        end
    end
    puts board.join("")
end

puts "The word was ``#{my_secret_word}``"