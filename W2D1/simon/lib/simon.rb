class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    input = nil
    while true
      print "Please enter the color of the next "

    end
  end

  def add_random_color
    @seq << COLORS[rand(0..3)]
  end

  def round_success_message
    puts "You successfully completed a #{@sequence_length} color sequence."
  end

  def game_over_message
    puts "Game over. You failed on a #{@sequence_length} color sequence."
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
