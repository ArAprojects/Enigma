
module Shift

  def shift_a
    a_key + offset_a
  end

  def shift_b
    b_key + offset_b
  end

  def shift_c
    c_key + offset_c
  end

  def shift_d
    d_key + offset_d
  end

  def shift_array
    shifts = []
    shifts << shift_a
    shifts << shift_b
    shifts << shift_c
    shifts << shift_d
  end

  def shift(letter, number)
    shifter = @character_set.index(letter) + number
    if @character_set.index(letter) = nil
      letter
    else
     @character_set.rotate(shifter).first
  end
end



  def shifted(message, shift)
    message_shift = message.downcase.split("").map do |char|
      char.shift
    end
    message_shift
  end
end
