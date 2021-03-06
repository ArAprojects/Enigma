require './test/test_helper'



class EnigmaTest < MiniTest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_enigma_can_encrypt_with_key_and_date
    enigma = Enigma.new
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end

  def test_engigma_can_decrypt_with_key_and_date
    skip
    enigma = Enigma.new
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
  }
  assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_enigma_can_encrypt_with_key_plus_todays_date
    skip
    enigma = Enigma.new
    expected = {
      :encryption=>"hello world", :key=>"02715", :date=> enigma.todays_date
    }
    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_engigma_can_decrypt_with_key_plus_todays_date
    skip
    enigma = Enigma.new
    expected = {

    }
    assert_equal expected, enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_enigma_can_encrypt_with_random_key_plus_todays_date
    skip
    enigma = Enigma.new
    expected = {

    }
    assert_equal expected, enigma.encrypt("hello world")
  end

  def test_enigma_knows_todays_date
    enigma = Enigma.new
    Date.today.strftime('%d%m%y')
    assert_equal Date.today.strftime('%d%m%y'), enigma.todays_date
  end

end
