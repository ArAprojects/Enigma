require './test/test_helper'


class ShiftTest < MiniTest::Test

  def test_shift_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

end
