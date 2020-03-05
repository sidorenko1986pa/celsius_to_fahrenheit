class ConverterCelsiusToFahrenheit
  def initialize(celsius)
    @celsius = celsius[/^([+-]?\d+(.[\d{0,1}])?)$/]
    freeze
  end

  def make
    return 'Неверно указано значение' if @celsius.nil?

    "#{converter} °F"
  end

  def converter
    (@celsius.to_f * 1.8 + 32).round(1)
  end
end

puts "Введите градусы по Цельсию(одно значение после запятой):"
puts ConverterCelsiusToFahrenheit.new(gets.chomp).make
