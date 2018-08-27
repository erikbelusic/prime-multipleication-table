class MultiplicationTableToTabularDataTransformer
  def initialize(multiplication_table)
    @multiplication_table = multiplication_table
  end

  def transform
    result = [header_row]

    @multiplication_table.y_axis.each_with_index do |y_value, y_index|
      row = [y_value]
      @multiplication_table.x_axis.each_index do |x_index|
        row << @multiplication_table.get_product_at(x_index, y_index)
      end
      result << row
    end

    result
  end

  private
  def header_row
    [nil] + @multiplication_table.x_axis
  end
end