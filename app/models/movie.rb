class Movie < ApplicationRecord
  belongs_to :genre, optional: true
  mount_uploader :video, VideoUploader
end
