require 'multiplication_table'

describe MultiplicationTable do
  describe '#initialize' do
    it 'assigns x_axis' do
      values = [1, 2, 3]
      multiplication_table = MultiplicationTable.new(values, [4, 5, 6])
      expect(multiplication_table.x_axis).to eq(values)
    end

    it 'assigns y_axis' do
      values = [4, 5, 6]
      multiplication_table = MultiplicationTable.new([1, 2, 3], values)
      expect(multiplication_table.y_axis).to eq(values)
    end

    it 'assigns x_axis values to y_aixs when a y_axis is not provided' do
      values = [1, 2, 3]
      multiplication_table = MultiplicationTable.new(values)
      expect(multiplication_table.y_axis).to eq(values)
    end
  end

  describe '#get_product_at' do
    it 'returns the product of the x and y values specified' do
      x_values = [1, 2, 3]
      y_values = [4, 5, 6]
      multiplication_table = MultiplicationTable.new(x_values, y_values)

      expect(multiplication_table.get_product_at(0,0)).to eq(4)
      expect(multiplication_table.get_product_at(0,1)).to eq(5)
      expect(multiplication_table.get_product_at(0,2)).to eq(6)
      expect(multiplication_table.get_product_at(1,0)).to eq(8)
      expect(multiplication_table.get_product_at(1,1)).to eq(10)
      expect(multiplication_table.get_product_at(1,2)).to eq(12)
      expect(multiplication_table.get_product_at(2,0)).to eq(12)
      expect(multiplication_table.get_product_at(2,1)).to eq(15)
      expect(multiplication_table.get_product_at(2,2)).to eq(18)
    end
  end
end