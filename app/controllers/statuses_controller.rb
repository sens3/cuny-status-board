class StatusesController < ApplicationController

  respond_to :html, :json

  def index
    @users = User.all
    if for_user?
      user = User.find_by_id(params[:user_id])  
      @statuses = user.statuses
    else
      @statuses = Status.all
    end

    if request.xhr?
      render :partial => 'show', :collection => @statuses, :as => :status
    else
      render :index
    end
  end

  def for_user?
    !params[:user_id].blank?
  end

end