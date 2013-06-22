class UserSessionsController < ApplicationController
  #before_filter :require_no_user, :only => [:new, :create]
  #before_filter :require_user, :only => :destroy

  def new
    @user_session = UserSession.new
    puts "Im in here"
    puts "#{@user_session.email}"  
    puts "#{@user_session.password}"   
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_session }
    end   
  end
  


  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end


end
