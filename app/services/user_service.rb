class UserService
    # actual production URL will need to be set in /config/app_environment_variables.rb
    def self.conn
        Faraday.new(ENV["DATABASE_URL"])
    end

    def self.create_user(data)
        response = conn.post("/api/v1/users/register", {
            email: data[:email],
            name: data[:name]
        }.to_json, "Content-Type" => "application/json")
        
        JSON.parse(response.body, symbolize_names: true)
    end
end