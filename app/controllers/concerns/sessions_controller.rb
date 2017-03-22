class SessionsController < ApplicationController

  def new

  end

  def create
    if user = login(params[:email], params[:password])
      flash[:notice] = "登陆成功"
      redirect_to root_path
    else
      flash[:notice] = "密码或者邮箱不正确"
      redirect_to new_session_path
    end
  end

  def destroy
    logout
    flash[:notice] = "推出成功"
    redirect_to root_path
  end
end
