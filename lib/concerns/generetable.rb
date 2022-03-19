# frozen_string_literal: true

module Generetable
  TIMES = 5
  MAX_RANDOMIZATION_SIZE = 5_000_000

  def create_unique_array(size)
    range_border = size * TIMES

    raise NoMemoryError if range_border > MAX_RANDOMIZATION_SIZE

    (0..range_border).to_a.shuffle!.take(size)
  end
end
