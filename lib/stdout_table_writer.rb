class StdoutTableWriter
  def initialize(tabular_array_data)
    @tabular_array_data = tabular_array_data
  end

  def print
    $stdout.puts(@output ||= generate_output)
  end

  private
  def generate_output
    @output = String.new
    add_to_output row_line
    add_to_output table_contents
    add_to_output row_line
  end

  def add_to_output(string)
    @output += string
  end

  def row_line
    String.new.ljust(table_width, '-') + new_line
  end

  def table_contents
    rows = String.new
    @tabular_array_data.each_with_index do |row, index|
        rows += row_format(row)
    end
    rows
  end

  def table_width
    @table_width ||= 1 + cell_contents_width.reduce(0) {|sum, val| sum + val + 3}
  end

  def cell_contents_width
    @cell_contents_width ||= @tabular_array_data.last.map {|value| value.to_s.length}
  end

  def new_line
    "\n"
  end

  def row_format(row_data)
    '|' + row_data.map.with_index {|val, index| cell_format(val, index)}.join('') + new_line
  end

  def cell_format(val, col_index)
    ' ' + val.to_s.rjust(cell_contents_width[col_index], ' ') + ' |'
  end
end