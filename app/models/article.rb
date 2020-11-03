class Article < ApplicationRecord
    mount_uploader :title, TitleUploader
    scope :recent, -> {order(created_at: :desc)}
end
