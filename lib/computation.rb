# frozen_string_literal: true

require 'set'

require_relative 'concerns/generetable'
require_relative 'finders/find_in_array'
require_relative 'finders/find_in_set'

class Computation
  include Generetable

  def initialize(number_of_runs:, upper_border_range:)
    @number_of_runs = number_of_runs
    @upper_border_range = upper_border_range
  end

  def call!
    Array
      .new(@number_of_runs) { create_array_element }
      .each_with_object([]) { |hash, acc| accumulate(hash[:array_size], hash[:number_to_find], acc) }
  end

  private

  def create_array_element
    {
      array_size: rand(0..@upper_border_range),
      number_to_find: rand(@upper_border_range)
    }
  end

  def accumulate(array_size, number, acc)
    array = create_unique_array(array_size)

    acc << {
      array: Finders::FindInArray.new.call(array: array, number: number),
      set: Finders::FindInSet.new.call(set: array.to_set, number: number)
    }
  end
end
