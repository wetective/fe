<<<<<<< HEAD:app/poros/user_poro.rb
class UserPoro
  attr_reader :first_name,
              :email,
              :password,
=======
class User 
  attr_reader :email,
>>>>>>> main:app/poros/user.rb
              :id

  def initialize(attributes)
    @id = attributes[:id]
  end
end