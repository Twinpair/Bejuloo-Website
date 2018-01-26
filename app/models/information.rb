class Information < ApplicationRecord

  mount_uploader :header_image, InformationUploader
  mount_uploader :about_image, InformationUploader
  mount_uploader :testimonial_image, InformationUploader

end
