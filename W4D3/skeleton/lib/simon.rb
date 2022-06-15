class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn
    if @game_over == false
      round_success_message
      show_sequence
      require_sequence
      add_random_color
      @sequence_length +=1
    end
  end

  def show_sequence
    add_random_color
   

  end

  def require_sequence

  end

  def add_random_color
    seq << COLORS.sample

  end

  def round_success_message

  end

  def game_over_message
    puts "Game over"
    reset_game

  end

  def reset_game
    @game_over = false
    @seq = []
    @sequence_length = 1
  end
end
