# frozen_string_literal: true

require './lib/concerns/benchmarkable'

class Base
  prepend Benchmarkable

  def call(object, number)
    object.include?(number)
  end
end
