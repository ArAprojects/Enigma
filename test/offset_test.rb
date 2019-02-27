require './test/test_helper'

class OffsetTest < MiniTest::Test

  def test_enigma_knows_todays_date_still
    enigma = Enigma.new
    Date.today.strftime('%d%m%y')
    assert_equal Date.today.strftime('%d%m%y'), enigma.todays_date
  end

end
