class TransactionsController < ApplicationController
  def index
  	@transactions = current_user.transactions
  end

  def new
  	@transaction = Transaction.new
  end

  def create
  	@transaction = Transaction.new
  	@transaction.amount = params [:transaction][:amount]
  	@transaction.type = params [:transaction][:type]
  	@transaction.label = params [:transaction][:label]
  	@transaction.description = params [:transaction][:description]
  	@transaction.posted_on = DateTime.now

  	redirect_to :action => :index
  end
end
