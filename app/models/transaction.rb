class Transaction < ActiveRecord::Base

	validates :amount, presence: true
	validates :classify, presence: true
	validates :category, presence: true
	validates :posted_on, presence: true

end
