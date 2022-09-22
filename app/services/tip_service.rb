class TipService
  def self.create_tip(data)
    response = conn.post("/api/v1/user/#{data[:user_id]}/tips/new", {
      uid: data[:uid],
      description: data[:description],
      location: data[:location],
      user_id: data[:user_id]
    }.to_json, "Content-Type" => "application/json")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_tips(user_id)
    response = conn.get("/api/v1/user/#{user_id}/tips")

    JSON.parse(response.body, symbolize_names: true)
  end

  private
    # test / development
    def self.conn
      Faraday.new("http://localhost:4999")
    end

    # production
    # def self.conn
    #     Faraday.new("https://wetective-be.herokuapp.com")
    # end
end
