def convertToRoman(number)
  numbers =  [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  romans = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
  converted = ''
  aux = 0
  while number > 0
    (number/numbers[aux]).floor.times do
      converted += romans[aux]
      number -= numbers[aux]
    end
    aux += 1
  end
  return converted
end

def main()
  puts 'Enter a number to convert to a roman number:'
  number = gets
  puts convertToRoman(number.to_i)
end

main()