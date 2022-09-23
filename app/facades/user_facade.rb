class UserFacade 
  def self.find_and_authenticate(email, password)
    unless email == nil || password == nil
      user = UserService.authenticate_user(data)
      @user = UserPoro.new(user[:data])
    end
  end

  def self.find_or_create(data)
    user = UserService.find_user(data)
    if user == nil
      user = UserService.create_user(data)
    end
    @user = UserPoro.new(user[:data]) || nil
  end

  def self.find_user(data)
    unless data == nil
      user = UserService.find_user(data)
      @user = UserPoro.new(user[:data])
    end
  end

  def self.create_user(data)
    unless data == nil
      user = UserService.create_user(data)
      @user = UserPoro.new(user[:data])
    end
  end

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
