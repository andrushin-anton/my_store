class AdminController < ApplicationController

  before_filter :check_if_admin
  layout 'admin'

  def users_count
    @users_count = User.count
  end

end
