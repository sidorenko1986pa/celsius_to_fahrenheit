def make(celsius)
  celsius = celsius[/^([+-]?\d+(.[\d{0,2}+])?)$/]
  return 'Неверно указано значение' if celsius.nil?

  "#{converter(celsius)} °F"
end

def converter(celsius)
  result = (celsius.to_f * 1.8 + 32).round(1)
  return result.to_i if integer?(result)

  result
end

def integer?(number)
  number.to_s[/^([+-]?\d+.0)$/]
end

puts "Введите градусы по Цельсию(одно значение после запятой):"
puts make(gets.chomp)
