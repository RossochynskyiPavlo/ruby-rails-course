# Ruby and RubyOnRails course examples by masterofcode.com
# Copyright (C) 2014  Masterofcode LLC

# Class as value
mary =
  class Cow
    def moo
      puts 'Moo as a cow'
    end

    def self.moo
      puts 'Moo as a cow'
    end

    self
  end

puts mary.moo
z = mary.new

puts 'Class by value'
puts '==================================================================='
z.moo
puts
