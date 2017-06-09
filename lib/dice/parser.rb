require 'optparse'
require_relative 'version'

module Dice
  class Parser
    attr_reader :options

    def initialize
      @options = {}
    end

    def call(args)
      OptionParser.new do |parser|
        parser.banner = 'Usage: dice [options]'
        parser.version = Dice::VERSION

        parser.on('-f', '--faces N', Integer, 'Roll the dice with N faces.') do |faces|
          options[:faces] = faces
        end

        parser.on('-c', '--count COUNT', Integer, 'Roll the dice COUNT times.') do |count|
          options[:count] = count
        end

        parser.on('-h', '--help', 'Show this help message.') do
          puts parser
          exit
        end
      end.parse!(args)
    end
  end
end
