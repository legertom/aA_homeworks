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
    raise 'Error invalid starting cup' if @cups[start_pos] > 14 || @cups[start_pos] < 1
    raise 'Starting cup is empty' if start_pos.empty?
  end

  def make_move(start_pos, current_player_name)
    current_cup = @cups[start_pos]
    if !current_cup.empty?
        #distribute stones
        (1..current_cup.length).each do |i|
          @cups[start_pos+1] << :stone

        end
        @cups[start_pos] = []
    end
    cups[start_pos] = []
    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
   return true if @cups[6].empty? || @cups[13].empty?
   return false if !@cups[6].empty? && !@cups[13].empty?
  end

  def winner
    if self.one_side_empty?
      if @cups[6].empty? && @cups[13].empty?
        return :draw
      elsif @cups[6].empty? && !@cups[13].empty?
        return @name1
      else
        return @name2
      end

    end
  end
end
