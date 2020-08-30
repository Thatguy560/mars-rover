class Rover
  attr_accessor :x, :y, :direction
  PLATEAU_BORDERS = [0, 5].freeze # Add constraints to a seperate class called plateau?

  def initialize(x, y, direction, plateau_borders = PLATEAU_BORDERS)
    @x = x
    @y = y
    @direction = direction
    @plateau_borders = plateau_borders
  end

  def move(input)
    raise "can't travel, wrong input given." if wrong_input(input)
    raise 'cannot move any further North or East' if @y >= PLATEAU_BORDERS[1] || @x >= PLATEAU_BORDERS[1]
    raise 'cannot move any further South or West' if @y <= PLATEAU_BORDERS[0] || @x <= PLATEAU_BORDERS[0]

    @y += 1 if facing_north(input)
    @y -= 1 if facing_south(input)
    @x += 1 if facing_east(input)
    @x -= 1 if facing_west(input)
    "Rover's co-ordinates are now #{@x} : #{@y} : #{@direction}"
  end

  def facing_north(input)
    input == 'M' && @direction == 'N'
  end

  def facing_south(input)
    input == 'M' && @direction == 'S'
  end

  def facing_east(input)
    input == 'M' && @direction == 'E'
  end

  def facing_west(input)
    input == 'M' && @direction == 'W'
  end

  def turn(input) # Move turning to another class called directions?
    @direction = input == 'R' && @direction == 'N' ? 'E' : 'N'
    "Rover is now facing #{@direction}"
    # Still in Progress
  end

  def wrong_input(input)
    input != 'M'
  end

  def to_s # Put this in another class called Coordinates or just delete?
    "x || y || direction\n" # Changed this and now test doesn't work
    "#{@x} || #{@y} || #{@direction}\n"
  end
end

# 1) Implement changing right or left - Implement Turn class?

# 2) Implement plateau class? Set constraints to 0,5