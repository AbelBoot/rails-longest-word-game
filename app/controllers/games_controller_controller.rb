class GamesControllerController < ApplicationController
  def new
    @letters = ("a".."z").to_a.shuffle[0,11].join
  end

  def score
    # We need to put this is the hidden field
    # of the html score file for this to work.
    # not sure why.
    @letters = params[:letters]

    input = params[:longest]

    if (input.length > @letters.length)
      @answer = "This word is too long."
    else
      valid = true

      input.chars.each do |letter|
        unless input.count(letter) < @letters.count(letter)
          valid = false
        end
      end

      if valid
        if english_word?
          @answer = "The word is valid according to the grid, but is not a valid English word"
        elsif
          @answer = "The word is valid according to the grid and is an English word"
        else
          @answer = "Word should include initial letters!"
        end
      end
    end
  end
end
