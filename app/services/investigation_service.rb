class InvestigationService
  def self.get_investigations_by_city(city)
    response = conn.get("wanted/v1/list?field_offices=#{city}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_investigation_by_uid(uid)
    response = conn.get("@wanted-person/#{uid}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_open_investigations(page)
    response = conn.get("@wanted?pageSize=20&page=#{page}&sort_on=modified&sort_order=desc&status=na")
    investigations = JSON.parse(response.body, symbolize_names: true)
  end

  private
    def self.conn
      Faraday.new(url: 'https://api.fbi.gov/')
    end
end
