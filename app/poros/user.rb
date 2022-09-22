class User 
  attr_reader :first_name,
              :email,
              :password,
              :id

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @email = attributes[:email]
    @password = attributes[:password]
    @id = attributes[:id] || nil
  end
end