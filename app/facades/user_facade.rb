class UserFacade 
  def self.find_create_user(data)
    attributes = UserService.create_user(data)
    User.new(attributes[:data])
  end
end