class PagesController < ApplicationController

  def index
    @information = Information.first
    @testimonials = Testimonial.all
  end

  def edit
  end
  
end
