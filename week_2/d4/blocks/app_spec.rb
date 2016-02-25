require('minitest/autorun')
require('minitest/rg')
require_relative('app')

class TestApp < MiniTest::Test

  def test_adds_one_to_each_item
    assert_equal([2,3,4], add_one([1,2,3]))
  end

  # Another way to write the previous test
  # def test_map_adds_one_to_each_item
  #   assert_equal([2,3,4], map([1,2,3]) { |x| x + 1 } )s
  # end 

  def test_multiplies_each_item_by_two
    assert_equal([2,4,6], multiply_by_two([1,2,3]))
  end

  # Another way to write the previous test
  def test_map_multiplies_each_item_by_two
    assert_equal([2,4,6], map([1,2,3]) { |x| x * 2 } )
  end 

  # Using .each which is the same as the for loop
  # even though for is considered to be quicker
  # .each is commonly used in Rails
  def test_each
    array = [1,2,3]
    result = []
    array.each do |x|
      result << x
    end
    assert_equal([1,2,3], result)
  end

  def test_up_to_you_add
    assert_equal(2, up_to_you(){ 1 + 1 })
  end

  def test_func
    assert_equal(-9, func(){|x| x - 10})
  end

  def test_this_block
    assert_equal('I am learning blocks', this_block('I am learning'){|x| x + ' blocks'})
  end

  # Another way to write the previous test
  def test_this_block
    result = this_block('I am learning') do |x| 
      x + ' blocks' 
    end
    assert_equal('I am learning blocks', result)
  end

end