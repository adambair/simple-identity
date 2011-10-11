class UsersController < ApplicationController
  before_filter :require_user, :except => :new

  def new
  end

  def show
    @user = current_user
  end

end
