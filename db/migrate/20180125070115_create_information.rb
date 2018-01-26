class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.string :header_image
      t.text :header_intro
      t.string :name
      t.text :header_description
      t.string :header_button_left_text
      t.string :header_button_left_link
      t.string :header_button_right_text
      t.string :header_button_right_link
      t.string :about_title
      t.text :about_description
      t.string :video_title
      t.text :video_description_first
      t.text :video_description_last
      t.string :video_featured
      t.string :video_button_text
      t.string :video_button_link
      t.string :testimonial_image
      t.string :contact_title
      t.text :contact_description
      t.string :vimeo
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :behance
      t.text :features_left_text
      t.text :features_left_link_text
      t.string :features_left_link
      t.text :features_middle_text
      t.text :features_middle_link_text
      t.string :features_middle_link
      t.text :features_right_text
      t.text :features_right_link_text
      t.string :features_right_link
      t.string :features_left_icon
      t.string :features_middle_icon
      t.string :features_right_icon
      t.string :about_image

      t.timestamps
    end
  end
end
