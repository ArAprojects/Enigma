require './test/test_helper'


class ShiftTest < MiniTest::Test

  def test_key_a_and_offset_a_sum_is_integer
    enigma = Enigma.new
    assert_instance_of Integer, engima.shift_a
  end

end
