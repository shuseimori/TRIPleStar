class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
    @micropost = current_user.microposts.build
  end
  end

  def help
  end

  def about
  end
end
