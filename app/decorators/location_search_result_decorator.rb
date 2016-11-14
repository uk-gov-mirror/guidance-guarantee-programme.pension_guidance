class LocationSearchResultDecorator < SimpleDelegator
  def address_flattened
    address.gsub("\n", ', ').squish
  end

  def distance
    format('%.2f', super)
  end

  def phone
    Phoner::Phone.parse(twilio_number).format('%A %n')
  end
end
