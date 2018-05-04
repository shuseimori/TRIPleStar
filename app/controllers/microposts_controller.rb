class MicropostsController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @micropost = Micropost.new
    end
    
    def create
        @micropost = current_user.microposts.create(micropost_params)
        if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
    end
    
    def micropost_params
      params.require(:micropost).permit(:content,:image)
    end
    
    def destroy
    end
end