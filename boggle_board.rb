require 'debugger'
class BoggleBoard
  attr_reader :grid
  def initialize
@letters=[["A", "A", "E", "E", "G", "N"],
          ["E", "L", "R", "T", "T", "Y"],
          ["A", "O", "O", "T", "T", "W"],
          ["A", "B", "B", "J", "O", "O"],
          ["E", "H", "R", "T", "V", "W"],
          ["C", "I", "M", "O", "T", "U"],
          ["D", "I", "S", "T", "T", "Y"],
          ["E", "I", "O", "S", "S", "T"],
          ["D", "E", "L", "R", "V", "Y"],
          ["A", "C", "H", "O", "P", "S"],
          ["H", "I", "M", "N", "Qu", "U"],
          ["E", "E", "I", "N", "S", "U"],
          ["E", "E", "G", "H", "N", "W"],
          ["A", "F", "F", "K", "P", "S"],
          ["H", "L", "N", "N", "R", "Z"],
          ["D", "E", "I", "L", "R", "X"]]
     letters = ('A'..'Z').to_a
     #@grid = Array.new(4){letters.sample(4)}
      @initial_grid = Array.new
      @letters.each do |x|
      @initial_grid << x.sample
    end
     @grid = []
     4.times{@grid << @initial_grid.shift(4)}
     
  end
  #debugger
  def shake!
    @grid.shuffle!
    # p @grid
   
  end
  
  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  #
  # Override this to print out a sensible board format so
  # you can write code like:
  #
  # board = BoggleBoard.new
  # board.shake!
  # puts board
  def to_s
    formatted = ""

    @grid.each do |x|
      formatted << x.join("  ") + "\n"
      formatted.gsub!("u\s\s", "u\s")
    end

    formatted
  end
end

board = BoggleBoard.new
puts board
board.shake!
puts "----------"
puts board
#dumb boggle board generator
    # letters = ('A'..'Z').to_a
    # letter_array = Array.new(4) {letters.sample(4)}
    # p letter_array
