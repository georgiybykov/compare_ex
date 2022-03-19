# frozen_string_literal: true

class Interface
  def show(results)
    list = results.map! do |hash|
      <<~MSG
        Time to find inside an array: #{hash[:array]}
        Time to find inside a set: #{hash[:set]}
        The search was faster in: #{winner(hash[:array], hash[:set])}
        ****************************************************************
      MSG
    end

    puts list
  end

  private

  def winner(array_result, set_result)
    array_result < set_result ? 'Array' : 'Set'
  end
end
