# frozen_string_literal: true

require './lib/concerns/benchmarkable'

module Finders
  class FindInSet
    prepend Benchmarkable

    def call(set:, number:)
      set.include?(number)
    end
  end
end
