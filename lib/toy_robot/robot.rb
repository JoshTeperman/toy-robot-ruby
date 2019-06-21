module ToyRobot
  class Robot 
    attr_reader :east, :north, :direction

    DIRECTIONS = ['NORTH', 'EAST', 'SOUTH', 'WEST']

    def initialize(east = 0, north = 0, direction = 'NORTH')
      @east = east
      @north = north
      @direction = direction
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -= 1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end

    def move
      send("move_#{@direction.downcase}")
    end

    def turn_left
      @direction = DIRECTIONS[DIRECTIONS.index(@direction) - 1]
      # @direction =
      #   case @direction
      #   when 'NORTH' then 'WEST'
      #   when 'EAST' then 'NORTH'
      #   when 'SOUTH' then 'EAST'
      #   when 'WEST' then 'SOUTH'
      #   end
    end

    def turn_right
      index = DIRECTIONS.index(@direction)
      @direction = DIRECTIONS.rotate[index]
    end


  end
end
