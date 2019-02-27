require './test/test_helper'

class OffsetTest < MiniTest::Test

  def test_enigma_knows_todays_date_still
    enigma = Enigma.new
    Date.today.strftime('%d%m%y')
    assert_equal Date.today.strftime('%d%m%y'), enigma.todays_date
  end

  def test_todays_date_can_be_squared
    enigma = Enigma.new
    Date.today.strftime('%d%m%y')
    assert_equal Date.today.strftime('%d%m%y').to_i**2, enigma.todays_date_squared
  end

  def test_is_the_offset_a_string
    enigma = Enigma.new
    Date.today.strftime('%d%m%y')
    assert_instance_of String, enigma.offset_a
    assert_instance_of String, enigma.offset_b
    assert_instance_of String, enigma.offset_c
    assert_instance_of String, enigma.offset_d
    # assert_equal "7", enigma.offset_a
    # assert_equal "9", enigma.offset_b
    # assert_equal "6", enigma.offset_c
    # assert_equal "1", enigma.offset_d
  end

end
