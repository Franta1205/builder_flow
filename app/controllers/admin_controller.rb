class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin_access!

  def ensure_admin_access!
    unless admin_access?
      redirect_to client_root_path, alert: "You do not have access to the admin section!"
    end
  end

  def admin_access?
    current_user.company_memberships.any?
  end
end