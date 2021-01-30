class SessionsController < ApplicationController

  def new
  end

  def showtransaction
    @transaction = Transaction.find(params[:format])
    @account = Account.find(@transaction.account_id)
    @user = User.find(@account.user_id)
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      #redirect the user to the account summary page e.g.  reditect_to(path)
      if (user.username=="admin")
          redirect_to admin_index_path
      else
         redirect_to action: 'open'
      end
    else
      flash[:danger] = 'Invalid email address or password password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to action: 'new'

  end

end
