require './test/test_helper'

class KeyTest < MiniTest::Test

  def test_random_key_is_the_right_length
    enigma = Enigma.new
    assert_equal 5, enigma.random_key.length
  end

  def test_random_key_is_the_right_data_type
    enigma = Enigma.new
    assert String, enigma.random_key
  end

  def test_A_key
    enigma = Enigma.new
    key = enigma.random_key
    assert_equal key(0..1), enigma.a_key
  end

end
