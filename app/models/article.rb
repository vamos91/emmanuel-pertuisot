class Article < ApplicationRecord
    mount_uploader :photo, PictureUploader
end
