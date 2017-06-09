module Dice
  class Roller
    attr_reader :count, :faces

    def initialize(args = {})
      args = defaults.merge(args)
      @count = args[:count]
      @faces = args[:faces]
    end

    def call
      count.times do
        puts roll
      end
    end

    def roll
      rand(1..faces)
    end

    def defaults
      { faces: 6, count: 1 }
    end
  end
end
