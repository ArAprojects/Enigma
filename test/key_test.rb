require './test/test_helper'

class KeyTest < MiniTest::Test

  def test_random_number_is_the_right_length
    enigma = Enigma.new
    assert_equal 5, enigma.random_number.length
  end

  def test_random_number_is_the_right_data_type
    enigma = Enigma.new
    assert String, enigma.random_number
  end

  def test_A_key
    enigma = Enigma.new
    key = enigma.random_number
    assert_equal key[0..1].to_i, enigma.a_key
  end

  def test_B_key
    enigma = Enigma.new
    key = enigma.random_number
    assert_equal key[2..3].to_i, enigma.b_key
  end

  def test_C_key
    enigma = Enigma.new
    key = enigma.random_number
    assert_equal key[3..4].to_i, enigma.c_key
  end
end
