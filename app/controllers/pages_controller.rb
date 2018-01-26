class PagesController < ApplicationController

  before_action :authenticate, only: [:edit]

  def index
    @information = Information.first
    @testimonials = Testimonial.all
    @message = Message.new
  end

  def edit
  end
  
end
