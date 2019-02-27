module Offset

  def todays_date_squared
    date = todays_date.to_i**2
    date.to_s
  end

  def offset_a
    todays_date_squared[-4].to_i
  end

  def offset_b
    todays_date_squared[-3].to_i
  end

  def offset_c
    todays_date_squared[-2].to_i
  end

  def offset_d
    todays_date_squared[-1].to_i
  end

end
