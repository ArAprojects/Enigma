require './test/test_helper'


class KeyTest < MiniTest::Test

  def test_key_exists
    key = Key.new
    assert_instance_of Key, key
  end
