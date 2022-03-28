# frozen_string_literal: true

require './lib/concerns/benchmarkable'

module Finders
  class FindInArray
    prepend Benchmarkable

    def call(array:, number:)
      array.include?(number)
    end
  end
end
