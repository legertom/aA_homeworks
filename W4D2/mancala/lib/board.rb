class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  @cups.each_with_index do |cup, i|
    4.times { cup << :stone } unless i == 6 || i == 13
  end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 12 || start_pos < 0
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    cup_index = start_pos
    until stones.empty?
      cup_index +=1
      cup_index = cup_index % 14
      case cup_index
      when 6 
        @cups[cup_index] << stones.pop if current_player_name == @name1
      when 13
        @cups[cup_index] << stones.pop if current_player_name == @name2
      else
        @cups[cup_index] << stones.pop
      end
    end
    
    render
    next_turn(cup_index)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if @cups[ending_cup_idx].empty?
      :switch
    elsif @cups[ending_cup_idx] == 6 && current_player_name == @name1
      :prompt
    elsif @cups[ending_cup_idx] == 13 && current_player_name == @name2
      :prompt
    elsif @cups[ending_cup_idx].size > 0
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
   @cups[0..5].all? { |cup| cup.empty?} || @cups[7..12].all? { |cup| cup.empty?}
  end

  def winner
    player1_score = @cups[6].count
    player2_score = @cups[13].count

    case player1_score <=> player2_score
    when -1
      @name2
    when 0
      :draw
    when 1
      @name1
    end

  end
end
