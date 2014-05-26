class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all.reverse
    @last = 0
    @tentransactions = Transaction.last(10).reverse
    @transactions.each do |transaction|

    if (transaction.classify == "Income")
      @last += transaction.amount
    else 
        @last -= transaction.amount
    end
  end
  if Transaction.last != nil
  @totalbalance = Transaction.last.totalbalance
  end
  end

  def new
  	@transaction = Transaction.new
  end

  def create
  	@transaction = Transaction.new
  	@transaction.amount = params[:transaction][:amount]
  	@transaction.classify = params[:transaction][:classify]
  	@transaction.category = params[:transaction][:category]
  	@transaction.description = params[:transaction][:description]
  	@transaction.posted_on = DateTime.now
    if Transaction.last != nil
      if (@transaction.classify == "Income")
        @transaction.totalbalance = Transaction.last.totalbalance + @transaction.amount
      else 
        @transaction.totalbalance = Transaction.last.totalbalance - @transaction.amount
      end
    else
      if @transaction.classify == "Income"
        @transaction.totalbalance = @transaction.amount
      else
        @transaction.totalbalance = 0 - @transaction.amount
      end
    end
    @totalbalance = @transaction.totalbalance
    @transaction.save!
  	redirect_to root_path
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy!

    redirect_to root_path
  end

  def edit
    @transaction = Transaction.find(params[:id])

  end

  def update
    @transaction = Transaction.find(params[:id])
    @last= 0
    @transaction.totalbalance = 0
    @transaction.amount = params[:transaction][:amount]
    @transaction.classify = params[:transaction][:classify]
    @transaction.category = params[:transaction][:category]
    @transaction.description = params[:transaction][:description]
    @transaction.posted_on = DateTime.now
    @transaction.save!
    Transaction.all.each do |transaction|
      if (transaction.classify == "Income")
        @last += transaction.amount
      else 
        @last -= transaction.amount
      end
      transaction.save!
    end
    @totalbalance = @transaction.totalbalance
    

    redirect_to root_path
  end

  def show
    @transaction = Transaction.find(params[:id])
  end
end
