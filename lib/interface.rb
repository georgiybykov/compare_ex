# frozen_string_literal: true

module Interface
  def self.render(results)
    list = results.map! do |hash|
      winner = hash[:array] < hash[:set] ? 'Array' : 'Set'

      <<~MSG
        Time to find inside an array: #{hash[:array]}
        Time to find inside a set: #{hash[:set]}
        The search was faster in: #{winner}
        ****************************************************************
      MSG
    end

    puts list

    list
  end
end
