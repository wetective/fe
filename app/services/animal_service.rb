class DogService
  def self.random_dog
    response = dog_conn.get("breeds/image/random")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.random_cat
    response = cat_conn.get("/cat/cute/says/meow")
    require 'pry'; binding.pry 
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    def self.dog_conn
      Faraday.new(url: 'https://dog.ceo/api/')
    end

    def self.cat_conn
      Faraday.new(url: "https://cataas.com")
    end
end