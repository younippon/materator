begin
  File.open('colors.txt') do |file|

    color_name = "red"

    file.each_line do |labmen|
      labmen.chomp

      if labmen.include?(" ")
      elsif labmen.include?("#")
        str = labmen.split("#")
        puts "<color name=\"" + color_name.chomp + "_" + str[0].chomp + "\">#" + str[1].chomp + "</color>" 
      else
        color_name = labmen.downcase.chomp
      end
      # puts labmen
    end
  end

rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end
