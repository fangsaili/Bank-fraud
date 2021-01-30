class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    @account = Account.find(params[:account_id])
    @transaction = @account.transactions.new(transaction_params)
    @account.balance = @transaction.amount+@account.balance

    @account.save
    @transaction.balance = @account.balance
    @transaction.date = @transaction.created_at
    @transaction.save
      redirect_to account_path(@account)


  end

  def show

    @transaction = Transaction.find(params[:id])
    @account = Account.find(@transaction.account_id)

  end

  def index
    @transactions = Transaction.all
  end

  def edit
    @transaction = Transaction.find(params[:id])
    @account = Account.find(@transaction.account_id)
  end

  def update
    @transaction = Transaction.find(params[:id])
    @account = Account.find(@transaction.account_id)

    if @transaction.update(transaction_params)
      redirect_to @transaction
    else
      render 'edit'
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @account = Account.find(@transaction.account_id)

    @transaction.destroy

    redirect_to admin_path(@account)


 end



private
  def transaction_params
    params.require(:transaction).permit(:sender,:payee,:date,:currency, :description, :amount, :balance)
  end


end
