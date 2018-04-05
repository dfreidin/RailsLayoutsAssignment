class UsersController < ApplicationController
  def index
    render layout: "two_column"
  end

  def create
    User.create(process_user_form)
    redirect_to users_url
  end

  private
  def process_user_form
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end
end
