class Location
  attr_reader :coordinates, :city, :office_url, :address

  def initialize(data)
    @coordinates = [data[:lat], data[:lng]]
    @city = data[:city]
    @office_url = data[:url]
    @address = data[:address]
  end
end