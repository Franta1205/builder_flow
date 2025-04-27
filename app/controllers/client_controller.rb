class ClientController < Application
  before_action :authenticate_user
  before_action :ensure_client_acess!

  def ensure_client_acess!
    unless client_access?
      redirect_to admin_root_path, alert: "You do not have access to the client section!"
    end
  end

  def client_access?
    current_user.client_memberships.any?
  end
end