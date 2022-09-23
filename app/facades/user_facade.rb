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

  def self.create_user(data)
    unless data == nil
      user = UserService.create_user(data)
      @user = User.new(user[:data])
    end
  end
end
