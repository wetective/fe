class TipService
  def self.create_tip(user_id)
      response = conn.post("/api/v1/user/#{user_id}/tips/new")
      }.to_json, "Content-Type" => "application/json")
  end

  def self.find_tip(data)
    response = conn.get("/api/v1/user/#{user_id}/tips")
      
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    # test / development
    # def self.conn
    #   Faraday.new("http://localhost:4999")
    # end

    # production
    def self.conn
        Faraday.new("https://wetective-be.herokuapp.com")
    end
end