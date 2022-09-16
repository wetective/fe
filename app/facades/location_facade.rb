class LocationFacade
  def markers
    data = JSON.parse( IO.read("app/javascript/locations/fbi_field_offices.json") )
    data[markers].map do |loc|
      Location.new(loc)
    end
  end
end