module NumbersAndWords
  module Wrappers
    class String
      attr_accessor :number

      def initialize stringNumber
        @number = stringNumber.to_i
      end

      def to_words options = {}
        to_figures_array.to_words options
      end

      private

      def to_figures_array
        number.to_s.split(//).map(&:to_i).to_figures
      end
    end
  end
end