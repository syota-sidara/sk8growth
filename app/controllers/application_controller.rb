class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  

	def after_sign_in_path_for(resource)
 		 case resource
 		 	when Admin
 		 		 flash[:notice] = "サインインしました"
    			admins_home_index_path
  			when User
  				 flash[:notice] = "サインインしました"
    			root_path
 		 end
	end
# ログアウト後に遷移するpathを設定
	def after_sign_out_path_for(resource)
		case resource
			when :admin
				 flash[:notice] = "ログアウトしました"
				master_top_path
			when :user
				 flash[:notice] = "ログアウトしました"
				root_path

  		end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
