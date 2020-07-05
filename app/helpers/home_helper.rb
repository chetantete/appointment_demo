module HomeHelper
  def find_role
    current_user.roles.first.name
  end
end
