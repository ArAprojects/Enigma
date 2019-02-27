
module Key

  def random_number
    @random_number ||= rand(0..99999).to_s.rjust(5,'0')
  end

  def a_key
    random_number[0..1].to_i
  end

  def b_key
    random_number[2..3].to_i
  end

end
