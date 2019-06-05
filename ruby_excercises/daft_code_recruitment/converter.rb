require_relative 'price'
require 'pry'
class Converter
  class InvalidConversion < StandardError;
  end


  POSSIBLE_CONVERSIONS = Hash[:eur_pln => 4.32, :eur_usd => 1.13, :usd_pln => 3.81,
                              :usd_eur => 0.88, :pln_eur => 0.23, :pln_usd => 0.26].freeze

  attr_reader :amount, :input_currency, :conversion_value, :conversion_key, :possible_conversions, :change_to


  def initialize(price_in_currency)
    @input_currency = price_in_currency.currency
    @amount = price_in_currency.amount
    @possible_conversions = POSSIBLE_CONVERSIONS

  end


  def convert_to(change_to)
    @change_to = change_to
    @conversion_key = "#{input_currency}_#{change_to}".to_sym
    validate_conversion
    coefficient = possible_conversions[conversion_key]
    @conversion_value = amount * coefficient
    conversion_value.round(2)
  end

  private

  def validate_conversion
    raise InvalidConversionError unless POSSIBLE_CONVERSIONS.include?(conversion_key)
  end

end

price_in_euro = Price.new(21, :eur)

converter = Converter.new(price_in_euro)
puts converter.amount
puts converter.input_currency
puts converter.convert_to(:pln)


