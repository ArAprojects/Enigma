require './test/test_helper'


class ShiftTest < MiniTest::Test

  def test_shift_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_shift_has_an_empty_hash
    shift = Shift.new
    expected = {}
    assert_equal expected, shift.hash
  end

  
