class User 
  attr_reader :name,
              :email,
              :id

  def initialize(attributes)
    @email = attributes[:attributes][:email]
    @name = attributes[:attributes][:name]
    @id = attributes[:id]
  end
end