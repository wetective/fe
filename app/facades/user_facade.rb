class UserFacade 
  def self.find_create_user(data)
    attributes = UserService.send_user(data)
    if attributes[:message]
        attributes
    else
        User.new(attributes[:data])
    end
  end

  def self.login(data)
    attributes = UserService.login_user(data)

  end
end