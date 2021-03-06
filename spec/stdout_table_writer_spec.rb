require 'stdout_table_writer'

describe StdoutTableWriter do
  describe '#print' do
    it 'outputs a table to stdout' do
      tabular_data = [
          [nil, 2, 3, 5, 7, 11],
          [2, 4, 6, 10, 14, 22],
          [3, 6, 9, 15, 21, 33],
          [5, 10, 15, 25, 35, 55],
          [7, 14, 21, 35, 49, 77],
          [11, 22, 33, 55, 77, 121],
      ]

      expect {StdoutTableWriter.new(tabular_data).print}.to output(
                                                               "--------------------------------\n" +
                                                               "|    |  2 |  3 |  5 |  7 |  11 |\n" +
                                                               "|  2 |  4 |  6 | 10 | 14 |  22 |\n" +
                                                               "|  3 |  6 |  9 | 15 | 21 |  33 |\n" +
                                                               "|  5 | 10 | 15 | 25 | 35 |  55 |\n" +
                                                               "|  7 | 14 | 21 | 35 | 49 |  77 |\n" +
                                                               "| 11 | 22 | 33 | 55 | 77 | 121 |\n" +
                                                               "--------------------------------\n"
                                                           ).to_stdout
    end
  end
end