# frozen_string_literal: true

require './lib/concerns/benchmarkable'

module Finders
  class Base
    prepend Benchmarkable

    def call(object:, number:)
      object.include?(number)
    end
  end
end
