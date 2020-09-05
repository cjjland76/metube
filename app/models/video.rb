class Video < ApplicationRecord
  mount_uploader :file, FileUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
end
