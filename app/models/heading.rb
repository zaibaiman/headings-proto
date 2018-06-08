class Heading < ActiveRecord::Base
  attr_accessible :meta_title, :meta_description, :headings, :subtitle, :solid_color

  mount_uploader :image, FileUploader
  mount_uploader :video, FileUploader
end
