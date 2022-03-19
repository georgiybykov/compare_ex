# frozen_string_literal: true

require 'set'

require_relative 'concerns/generetable'
require_relative 'finders/find_in_array'
require_relative 'finders/find_in_set'
require_relative 'interface'

class Computation
  include Generetable

  def initialize(number_of_runs:, upper_border_range:, interface: Interface.new)
    @number_of_runs = number_of_runs
    @upper_border_range = upper_border_range

    @interface = interface
  end

  def call!
    perform { computation }
  end

  private

  def computation
    Array
      .new(@number_of_runs) { create_array_element }
      .each_with_object([]) { |hash, acc| accumulate(hash[:array_size], hash[:number_to_find], acc) }
  end

  def create_array_element
    {
      array_size: rand(0..@upper_border_range),
      number_to_find: rand(@upper_border_range)
    }
  end

  def accumulate(array_size, number, acc)
    array = unique_array(array_size)

    acc << {
      array: FindInArray.new.call(array: array, number: number),
      set: FindInSet.new.call(set: array.to_set, number: number)
    }
  end

  def perform
    @interface.show(yield)
  end
end
