class UserService
    # test / development
    def self.conn
        Faraday.new("http://localhost:4999")
    end
    # production
    # def self.conn
    #     Faraday.new("production url")
    # end

    def self.create_user(data)
        response = conn.post("/api/v1/users/register", {
            email: data[:email],
            name: data[:name]
        }.to_json, "Content-Type" => "application/json")
        
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.find_user(data)
            response = conn.post("/api/v1/users/find", {
            email: data[:email],
            name: data[:name]
        }.to_json, "Content-Type" => "application/json")
        
        JSON.parse(response.body, symbolize_names: true)
    end
end