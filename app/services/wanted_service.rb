class WantedService

  def self.conn
    Faraday.new(url: 'https://api.fbi.gov/')
  end

  def self.get_wanted_list
    response = conn.get('wanted/v1/list')

    JSON.parse(response.body, symbolize_names: true)[:items]
  end
end
