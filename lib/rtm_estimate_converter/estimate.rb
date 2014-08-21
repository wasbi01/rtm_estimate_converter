module RtmEstimateConverter
  def estimated_time
    scan(/(?:([0-9\.]+)\s*([^0-9]+|\z))/u).inject(0) {|_, (num, unit)|
      _ + num.to_f.send(time_conversion_method(unit))
    }
  end

  private
  def time_conversion_method(unit)
    case unit[0]
    when "d"; :days
    when "h"; :hours
    when "m"; :minutes
    end
  end
end
