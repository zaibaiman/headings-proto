class Heading < ActiveRecord::Base
  attr_accessible :meta_title, :meta_description, :headings, :subtitle, :solid_color

  mount_uploader :image, FileUploader
  mount_uploader :mp4_video, FileUploader
  mount_uploader :webm_video, FileUploader

  # validate :file_size_validation

  private

  # def file_size_validation
  #   errors[:image] << "should be less than 5MB" if image.size > 5.megabytes
  #   errors[:mp4_video] << "should be less than 5MB" if mp4_video.size > 5.megabytes
  #   errors[:webm_video] << "should be less than 5MB" if webm_video.size > 5.megabytes
  # end  
end
