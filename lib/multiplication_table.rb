class MultiplicationTable
  attr_reader :x_axis, :y_axis

  def initialize(x_axis, y_axis = nil)
    @x_axis = x_axis
    @y_axis = y_axis.nil? ? x_axis : y_axis
  end

  def get_product_at(x_axis_index, y_axis_index)
    x_axis[x_axis_index] * y_axis[y_axis_index]
  end
end