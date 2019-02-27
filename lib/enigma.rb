require 'date'
require './lib/key'
require './lib/shift'
require './lib/offset'

class Enigma
  include Key
  include Shift
  include Offset

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def encrypt(message, key = random_key, date = todays_date)
    shift = message
    {encryption: message, key: key, date: date}
  end

  def todays_date
    Date.today.strftime('%d%m%y')
  end

end
