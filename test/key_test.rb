require './test/test_helper'


class KeyTest < MiniTest::Test

  def test_random_key_is_the_right_length
    assert_equal 5, random_key.count
  end

  def test_random_key_is_the_right_data_type
    assert String, random_key.class
  end

end
