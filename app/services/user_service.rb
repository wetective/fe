class UserService
    def self.conn
        Faraday.new("http://localhost:4999")
    end

    # def self.get_json(response)
    #     binding.pry
    #     JSON.parse(response.body, symbolize_names: true)
    # end

    def self.users
        response = conn.get("/api/v1/users")
        get_json(response)
    end

    def self.user(id)
        response = conn.get("/api/v1/users/#{id}")
        get_json(response)
    end

    def self.create_user(data)
        response = conn.post("/api/v1/users/register", {
            email: data[:email]
        }.to_json, "Content-Type" => "application/json")
        # binding.pry
        # JSON.parse(response.body, symbolize_names: true)

    end
end