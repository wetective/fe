class UserFacade 
  def self.find_create_user(data)
    attributes = UserService.create_user(data)
    UserPoro.new(attributes[:data])
  end

  def self.find_user(data)
    attributes = UserService.find_user(data)
    UserPoro.new(attributes[:data])
  end
end