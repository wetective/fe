class LocationFacade
  def markers
    data = JSON.parse( IO.read("app/javascript/locations/fbi_field_offices.json"), symbolize_names: true )
    data[:markers].map do |loc|
      LocationPoro.new(loc)
    end
  end
end