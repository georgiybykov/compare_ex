# frozen_string_literal: true

require 'benchmark'

module Benchmarkable
  def call(*)
    Benchmark.realtime { super }
  end
end
