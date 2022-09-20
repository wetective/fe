class InvestigationService

  def self.conn
    Faraday.new(url: 'https://api.fbi.gov/')
  end

  def self.get_investigations
    response = conn.get("wanted/v1/list")
    total_investigations = JSON.parse(response.body, symbolize_names: true)[:total]
    all_data = []
    i = 1

    until all_data.count >= total_investigations
      response_2 = conn.get("wanted/v1/list?page=#{i}")
      all_data << JSON.parse(response_2.body, symbolize_names: true)[:items]
      i += 1
      all_data.flatten!
    end
    
    all_data
  end
end
