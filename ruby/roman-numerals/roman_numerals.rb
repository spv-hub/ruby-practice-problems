=begin
Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
`roman_numerals_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/roman-numerals` directory.
=end
# digit method https://www.rubyguides.com/2017/10/7-powerful-ruby-methods/#Integerdigits_Method_Ruby_24
class Integer
  def to_roman
    digits.map.with_index do |digit, index|
      case index
      when 0
        convert_to_roman(digit, "I", "V", "X")
      when 1
        convert_to_roman(digit, "X", "L", "C")
      when 2
        convert_to_roman(digit, "C", "D", "M")
      when 3
        convert_to_roman(digit, "M", nil, nil)
      end
    end.reverse.join
  end

  def convert_to_roman(digit, one, five, ten)
    case digit
    when 0, 1, 2, 3
      one * digit
    when 4
      "#{one}#{five}"
    when 5, 6, 7, 8
      "#{five}#{one * (digit - 5)}"
    when 9
      "#{one}#{ten}"
    end
  end
end
