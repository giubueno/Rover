module Rover
  class Direction
    attr_reader :name, :vector

    def initialize(name, vector)
      self.name = name
      self.vector = vector
    end

    private

    attr_writer :name, :vector
  end
end