class UsersController < ApplicationController
  def index
    @users = User.all
  end

  # def article_params
  #   params.require(:article).permit(:title, :body, :photo)
  # end
end
