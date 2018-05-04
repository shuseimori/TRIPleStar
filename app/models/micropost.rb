class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates:user_id, presence:true
  validates:content, presence:true, length:{maximum:100}
  record_timestamps = true
  mount_uploader:image, ImageUploader
end
