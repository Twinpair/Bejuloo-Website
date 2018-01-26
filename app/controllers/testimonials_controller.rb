class TestimonialsController < ApplicationController

  def index
    @testimonials = Testimonial.all
    #Counter is used to add a row div every 4 items
    @counter = 0
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.order_listed.nil? 
      @testimonial.order_listed = Testimonial.count + 1
    end
    if @testimonial.save
      Testimonial.increment_order(@testimonial.id, @testimonial.order_listed)
      redirect_to testimonials_path 
    else
      render :new
    end
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    # Save order_listed attribute to update accoridingly later
    cache_order_listed = @testimonial.order_listed
    if @testimonial.update(testimonial_params)
      if @testimonial.order_listed.nil? 
        @testimonial.order_listed = Testimonial.count + 1
      end
      # Don't increment other order_listed attributes if order_listed is the same on the one being updated
      if cache_order_listed != @testimonial.order_listed
        Testimonial.increment_order(@testimonial.id, @testimonial.order_listed)
      end
      redirect_to testimonials_path  
    else
      render :edit
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    Testimonial.decrement_order(@testimonial.id, @testimonial.order_listed)
    @testimonial.destroy
    redirect_to testimonials_path
  end

private

  def testimonial_params
    params.require(:testimonial).permit(:quote, :source, :order_listed)
  end

end
