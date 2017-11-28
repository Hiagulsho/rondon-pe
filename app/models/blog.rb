class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :banner, BannerUploader

end
