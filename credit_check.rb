require 'pry'
require 'byebug'

card_number = "4929735477250543"

# Your Luhn Algorithm Here
card_number = card_number.split("").map(&:to_i)
every_other_doubled = []
card_number.each_with_index do |element, index|
  if index.even?
    if (element * 2) >= 10
      every_other_doubled << (element * 2).to_s.split("").map(&:to_i).reduce(:+)
    else
      every_other_doubled << element * 2
    end
  else
    every_other_doubled << element
  end
end

if every_other_doubled.reduce(:+) % 10 == 0
  puts "The number is valid!"

else
  puts "The number is invalid!"
end
