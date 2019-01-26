class BodyComposition < ApplicationRecord
  DISPLAY_COLUMN_NAMES = BodyComposition.columns.map(&:name) - %w[id created_at updated_at]

  def display_strings(reload: false)
    return @display_strings if !reload && @display_strings

    @display_strings = DISPLAY_COLUMN_NAMES.map do |col_name|
      value = send(col_name.to_sym)

      cls = value.class
      next format('%#.00f', value) if cls.is_a?(BigDecimal)

      next value.strftime('%Y-%m-%d') if value.respond_to?(:strftime)

      value.to_s
    end
  end
end
