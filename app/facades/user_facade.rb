class UserFacade 
  def self.find_create_user(data)
    user = UserService.create_user(data)
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
end