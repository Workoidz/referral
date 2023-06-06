class UserReferralController < ApplicationController
	
	def index
		@user_referrals = current_user.user_referrals
	end

	def invite
    	p params[:email]
    	UserReferral.create(email:params[:email].to_s,user_id:current_user.id)
    	ReferralInviteMailer.welcome_email(params[:email]).deliver_now
    	redirect_to home_index_path
  	end
end