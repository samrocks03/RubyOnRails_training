def ip_addr_class(ip_addr)
    oct_1 = ip_addr.split(".").first.to_i
  
    case oct_1
    when 1..126
      "Class A"
    when 128..191
      "Class B"
    when 192..223
      "Class C"
    when 224..239
      "Class D"
    when 240..255
      "Class E"
    else
      "Invalid IP!"
    end
end


ip_addr = '192.168.49.34'
ip_class = ip_addr_class(ip_addr)


puts "IP Address: #{ip_addr}"
puts "IP Address #{ip_addr} is in #{ip_addr_class(ip_addr)}."
