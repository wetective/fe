module UserHelper
  def user_avatar(user, options = {})
    if user.avatar?
      image_tag(user.avatar.url, options)
    else
      image_tag("default_avatar.png", options)
    end
  end

  def user_exists?
    UserFacade.find_user(params[:email])
  end
end