module Offset

  def todays_date_squared
    todays_date.to_i**2
  end

  def offset_a
    todays_date_squared.to_s[-4]
  end



end
