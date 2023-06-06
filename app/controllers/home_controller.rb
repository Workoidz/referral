class HomeController < ApplicationController
  def index
     @user_referrals = current_user.user_referrals.paginate(page: params[:page], per_page: 3)
  end

end
