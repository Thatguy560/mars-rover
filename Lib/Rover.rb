class Rover
  attr_accessor :x, :y, :direction
  PLATEAU_BORDERS = [0, 5].freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(input) # Implement plateau class?
    raise 'Cannot move any further North or East' if @y >= PLATEAU_BORDERS[1] || @x >= PLATEAU_BORDERS[1]
    raise 'Cannot move any further South or West' if @y <= PLATEAU_BORDERS[0] || @x <= PLATEAU_BORDERS[0]

    @y += 1 if facing_north(input)
    @x += 1 if facing_east(input)
    @y -= 1 if facing_south(input)
    @x -= 1 if facing_west(input)
    "Current Rover co-ordinates are #{@x} : #{@y} : #{@direction}"
  end

  def facing_north(input)
    input == 'M' && @direction == 'N'
  end

  def facing_east(input)
    input == 'M' && @direction == 'E'
  end

  def facing_south(input)
    input == 'M' && @direction == 'S'
  end

  def facing_west(input)
    input == 'M' && @direction == 'W'
  end

  # Move turning to another class called directions?
  def turn(input)
    turn_left(input)
    turn_right(input)
    "Rover is now facing #{@direction}"
  end
  # Turn off autoformatting Ruby
  def turn_left(input)
    if input == 'L' && @direction == 'N'
      @direction = 'W'
    else
      if input == 'L' && @direction == 'W'
        @direction = 'S'
      else
        if input == 'L' && @direction == 'S'
          @direction = 'E'
        else
          input == 'L' && @direction == 'E' ? @direction = 'N' : @direction
  end
    end
end
  end

  def turn_right(input)
    if input == 'R' && @direction == 'N'
      @direction = 'E'
    else
      if input == 'R' && @direction == 'E'
        @direction = 'S'
      else
        if input == 'R' && @direction == 'S'
          @direction = 'W'
        else
          input == 'R' && @direction == 'W' ? @direction = 'N' : @direction
  end
    end
end
  end

  def to_s
    "#{@x} #{@y} #{@direction}"
  end
end

# Implement changing right or left - Implement Direction class?
# Add plateau constraints to a seperate class called Plateau?

# condition ? return true value : another condition ? return true value : another condition
