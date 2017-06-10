require_relative 'dice/parser'
require_relative 'dice/roller'

module Dice
  def self.parse(args)
    parser = Parser.new(args)
    parser.call
    @options = parser.options
  end

  def self.run
    roller = Roller.new(@options)
    roller.call
  end
end
