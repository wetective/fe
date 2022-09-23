class InvestigationService
  def self.get_investigations_by_city(city)
    response = conn.get("wanted/v1/list?field_offices=#{city}")
    JSON.parse(response.body, symbolize_names: true)[:items]
  end

  def self.get_investigation_by_uid(uid)
    response = conn.get("wanted/v1/list?uid=#{uid}")
    JSON.parse(response.body, symbolize_names: true)[:items]
  end

  def self.get_investigations
    url = "wanted/v1/list?status=na"
    # ApiRequest.cache(url, ) do
      response = conn.get(url)
      investigations = JSON.parse(response.body, symbolize_names: true)
    # end
    total_investigations = investigations[:total]
    all_data = []
    i = 1

    until all_data.count >= total_investigations
      response_2 = conn.get("wanted/v1/list?status=na&page=#{i}&pageSize=50")
      all_data << JSON.parse(response_2.body, symbolize_names: true)[:items]
      i += 1
      all_data.flatten!
    end

    all_data
  end

  private
    def self.conn
      Faraday.new(url: 'https://api.fbi.gov/')
    end
end
