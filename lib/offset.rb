module Offset

  def todays_date_squared
    todays_date.to_i**2
  end

  def offset_a
    todays_date_squared.to_s[-4]
  end

  def offset_b
    todays_date_squared.to_s[-3]
  end

  def offset_c
    todays_date_squared.to_s[-2]
  end

  def offset_d
    todays_date_squared.to_s[-1]
  end

end
