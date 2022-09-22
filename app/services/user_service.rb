class UserService
  def self.create_user(data)
    response = conn.post("/api/v1/users/register", {
      email: data[:email],
      name: data[:name]
    }.to_json, "Content-Type" => "application/json")
    
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_user(data)
    response = conn.post("/api/v1/users/find", {
      email: data
    }.to_json, "Content-Type" => "application/json")
    
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