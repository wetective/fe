class User 
  attr_reader :username,
              :email,
              :id
  def initialize(attributes)
    binding.pry
    @email = attributes[:attributes][:email]
    @id = attributes[:id]
  end
end