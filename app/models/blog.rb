class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :banner, AvatarUploader
end
