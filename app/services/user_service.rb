class UserService
    # actual production URL will need to be set in /config/app_environment_variables.rb
    def self.conn
        Faraday.new(ENV["DATABASE_URL"])
    end

    def self.send_user(data)
        response = conn.post("/api/v1/users/register", {
            email: data[:email],
            password: data[:password],
            oauth: data[:oauth]
        }.to_json, "Content-Type" => "application/json")
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.login_user(data)
        response = conn.post("/api/v1/users/login", {
            email: data[:email],
            password: data[:password],
            oauth: data[:oauth]
        }.to_json, "Content-Type" => "application/json")
        JSON.parse(response.body, symbolize_names: true) 
    end       
end