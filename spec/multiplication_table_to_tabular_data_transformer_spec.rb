require 'multiplication_table_to_tabular_data_transformer'
require 'multiplication_table'

describe MultiplicationTableToTabularDataTransformer do
  describe '#transform' do
    it 'generates a two-dimensional array of factors and products with the first cell empty' do
      multuplication_table = MultiplicationTable.new([1, 2, 3], [4, 5, 6])
      transformer = MultiplicationTableToTabularDataTransformer.new(multuplication_table)

      expect(transformer.transform).to eq(
                                           [
                                               [nil, 1, 2, 3],
                                               [4, 4, 8, 12],
                                               [5, 5, 10, 15],
                                               [6, 6, 12, 18]
                                           ]
                                       )
    end
  end
end