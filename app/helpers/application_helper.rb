module ApplicationHelper
  def auth_button
    if user_signed_in?
      link_to('Log out', destroy_user_session_path, :method => :delete)
    else
      link_to('Log in', new_user_session_path)
    end
  end
end
