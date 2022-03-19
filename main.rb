# frozen_string_literal: true

require './lib/computation'
require './lib/interface'

Computation
  .new(number_of_runs: ARGV[0].to_i, upper_border_range: ARGV[1].to_i)
  .call!
  .then { |result| Interface.render(result) }
