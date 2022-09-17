class InvestigationService
  def self.get_investigations_by_city(city)
    response = conn.get("wanted/v1/list?field_offices=#{city}")
    JSON.parse(response.body, symbolize_names: true)[:items]
  end

  def self.get_investigations
    response = conn.get('wanted/v1/list')
    JSON.parse(response.body, symbolize_names: true)[:items]
  end

  private
    def self.conn
      Faraday.new(url: 'https://api.fbi.gov/')
    end
end
