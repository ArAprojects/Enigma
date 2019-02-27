require './test/test_helper'


class ShiftTest < MiniTest::Test

  def test_key_a_and_offset_a_sum_is_integer
    enigma = Enigma.new
    assert_instance_of Integer, enigma.shift_a
  end

  def test_key_b_and_offset_b_sum_is_integer
    enigma = Enigma.new
    assert_instance_of Integer, enigma.shift_b
  end

  def test_key_c_and_offset_c_sum_is_integer
    enigma = Enigma.new
    assert_instance_of Integer, enigma.shift_c
  end

  def test_key_d_and_offset_d_sum_is_integer
    enigma = Enigma.new
    assert_instance_of Integer, enigma.shift_d
  end

  def test_can_can_we_shift_character_set
    enigma = Enigma.new
    assert_equal "e", enigma.shift("a", 4)
  end

  def test_shifted_works
    enigma = Enigma.new
    assert_equal "e", enigma.shifted("aerer")
  end






end
