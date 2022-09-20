class User 
  attr_reader :username,
              :email,
              :id

  def initialize(attributes)
    @email = attributes[:attributes][:email]
    @id = attributes[:id]
  end
end