class PagesController < ApplicationController

  def index
    @information = Information.first
    @testimonials = Testimonial.all
    @message = Message.new
  end

  def edit
  end
  
end
