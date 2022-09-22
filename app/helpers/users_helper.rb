module UsersHelper
  def user_avatar(user, options = {})
    if user.avatar?
      image_tag(user.avatar.url, options)
    else
      image_tag("default_avatar.png", options)
    end
  end

  def user_exists?(email)
    UserFacade.find_by(email: email)
  end
end