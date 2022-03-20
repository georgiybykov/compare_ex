# frozen_string_literal: true

require_relative 'base'

module Finders
  class FindInArray < Base
    def call(array:, number:)
      super(object: array, number: number)
    end
  end
end
