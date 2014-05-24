class PagesController < ApplicationController
  def index
  end

  def sign_up
  	render 'sign_up'
  end

  def about_us
  	render 'about_us'
  end

  def log_in
  	render 'log_in'
  end
end
