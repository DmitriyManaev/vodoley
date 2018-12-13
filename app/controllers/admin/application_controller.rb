class Admin::ApplicationController < Administrate::ApplicationController
  before_action :ensure_admin_signed_in!

  protected

  def ensure_admin_signed_in!
    unless admin_signed_in?
      flash[:notice] = t('admin.errors.sign_in')

      redirect_to new_admin_session_path
    end
  end
end
