require_relative "./direction"

module Rover
  class Bot
    attr_reader :position, :direction

    DIRECTIONS = [
      Direction.new('North', [1,0]),
      Direction.new('East', [0,1]),
      Direction.new('South', [-1,0]),
      Direction.new('West', [0,-1])
    ]
      
    def initialize
      self.direction = 0
      self.position = [0,0]
    end

    def left
      self.direction = self.direction - 1
      self.direction = DIRECTIONS.size - 1 if self.direction < 0
    end

    def right
      self.direction = (self.direction + 1) % DIRECTIONS.size
    end

    def forward
      self.position = [
        self.position[0] + DIRECTIONS[self.direction].vector[0],
        self.position[1] + DIRECTIONS[self.direction].vector[1]
      ]
    end

    def x
      self.position[0]
    end

    def y
      self.position[1]
    end

    def direction_name
      DIRECTIONS[self.direction].name
    end

    def to_s
      "Robot at (#{x}, #{y}) facing #{direction_name}"
    end

    private

    attr_writer :position, :direction
  end  
end