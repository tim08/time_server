class TimeSupplier

  def initialize(query_cities_str)
    @cities_str = query_cities_str.gsub('%20', ' ').split(',')
  end


  def to_s
    default_utc_time_str + other_time_str
  end

  private

  def default_utc_time_str
    "UTC: #{DateTime.current.strftime('%F %H:%M:%S')}"
  end

  def other_time_str
    str = ""
    @cities_str.each do |c|
      city = City.find_by_name(c)
      if city
        text_data = "#{city.name}: #{DateTime.current.in_time_zone(city.time_zone).strftime('%F %H:%M:%S')}"
      else
        text_data = "#{c}: Нет данных"
      end
      str << "\n"
      str << text_data
    end
    str
  end
end