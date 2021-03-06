require('minitest/autorun')
require_relative('../warehouse_functions.rb')

class TestWareHousePicker < MiniTest::Test

  def setup

    @warehouse = {
      a10: 'rubber band',
      a9: 'glow stick', 
      a8: 'model car', 
      a7: 'bookmark', 
      a6: 'shovel', 
      a5: 'rubber duck', 
      a4: 'hanger', 
      a3: 'blouse', 
      a2: 'stop sign', 
      a1: 'needle', 

      c1: 'rusty nail', 
      c2: 'drill press', 
      c3: 'chalk', 
      c4: 'word search', 
      c5: 'thermometer', 
      c6: 'face wash', 
      c7: 'paint brush', 
      c8: 'candy wrapper', 
      c9: 'shoe lace', 
      c10: 'leg warmers', 
      
      b1: 'tire swing', 
      b2: 'sharpie', 
      b3: 'picture frame', 
      b4: 'photo album', 
      b5: 'nail filer',
      b6: 'tooth paste', 
      b7: 'bath fizzers', 
      b8: 'tissue box', 
      b9: 'deodorant', 
      b10: "cookie jar"
    }

  end

  # 1
  def test_return_product_in_bay
    assert_equal('nail filer', return_product_in_bay('b5', @warehouse))
  end

  # 2
  def test_return_bay
    assert_equal('b5', return_bay('nail filer', @warehouse))
  end

  # 3
  def test_return_list_products
    result = ['nail filer', 'cookie jar', 'tooth paste']
    assert_equal(result, return_list_products([:b5, :b10, :b6], @warehouse))
  end

  # 4
  def test_return_list_bays
    result = [:c1, :c9, :c10]
    list = ['rusty nail', 'shoe lace', 'leg warmers']
    assert_equal(result, return_list_bays(list, @warehouse))
  end

end