# frozen_string_literal: true

require_relative 'base'

module Finders
  class FindInSet < Base
    def call(set:, number:)
      super(object: set, number: number)
    end
  end
end
