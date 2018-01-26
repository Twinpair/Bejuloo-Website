class InformationController < ApplicationController

  def index
    @information = Information.first
  end

  def edit
    @information = Information.first
  end

  def update
    @information = Information.first
    @information.update(information_params)
    redirect_to information_index_path
  end

private

  def information_params
    params.require(:information).permit(:header_image, :header_intro, :name, 
      :header_description, :header_button_left_text, :header_button_left_link, 
      :header_button_right_text, :header_button_right_link, :about_title, 
      :about_description, :video_title, :video_description_first, 
      :video_description_last, :video_featured, :video_button_text, 
      :video_button_link, :testimonial_image, :contact_title, :contact_description,
      :vimeo, :facebook, :twitter, :instagram, :behance, :features_left_text, 
      :features_left_link_text, :features_left_link, :features_middle_text, 
      :features_middle_link_text, :features_middle_link, :features_right_text, 
      :features_right_link_text, :features_right_link, :features_left_icon, 
      :features_middle_icon, :features_right_icon, :about_image, :phone, :email, 
      :features_title, :features_left_title, :features_middle_title, 
      :features_right_title)
  end

end
