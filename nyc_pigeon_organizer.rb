def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |k, v|
    v.each do |k2, v2|
      v2.each do |i|
        pigeon_list[i] ||= {}
        pigeon_list[i][k] ||= []
        pigeon_list[i][k] << k2.to_s
      end
    end
  end
pigeon_list
end
