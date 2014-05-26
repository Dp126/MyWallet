class PagesController < ApplicationController
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
	else
		@totalbalance =0
	end
  end

  def about_us
  	render 'about_us'
  end
end
