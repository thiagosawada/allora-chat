class RegistrationsController < Devise::RegistrationsController
private

  def sign_up_params
    params.require(:user).permit(:username, :first_name, :last_name, :category,
      :email, :password, :password_confirmation, :user_photo, :banner)
  end

  def account_update_params
    params.require(:user).permit(:username, :first_name, :last_name, :category,
      :email, :password, :password_confirmation, :user_photo, :current_password, :banner)
  end
end
