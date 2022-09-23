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

  def self.oauth_user(data)
    data[:info][:oauth] = true
    data[:info][:password] = 'google_oauth_password'
    find_create_user(data[:info])
  end

  def self.user_create(params)
    params[:oauth] = false
    find_create_user(params)
  end

  def self.find_create_user(data)
    attributes = UserService.send_user(data)
    User.new(attributes[:data]) if attributes[:data]
    attributes
  end

  def self.user_login(params)
    params[:oauth] = false
    attributes = UserService.login_user(params)
    User.new(attributes[:data]) if attributes[:data]
    attributes
  end
#   def self.create_user(data)
#     unless data == nil
#       user = UserService.create_user(data)
#       @user = User.new(user[:data])
#     end
#   end
end
