class PostsController < ApplicationController
  # Allows only signed in users to create and destroy posts
  #before_filter :signed_in_user, only: [:create, :destroy]

  def new
    @title = "New Post"
  end

  def create
#    @user = User.find(session[:user_id])
    @post = @user.posts.build(params[:post])
    # if the post was successfully saved
    if @post.save
      flash[:success] = "Posted!"
      redirect_to root_path
    else
      render 'users/show'
    end
  end

  def destroy
  end
end
