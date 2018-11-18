class Article < ApplicationRecord
    mount_uploader :photo, PictureUploader
    mount_uploader :illustration_1, PictureUploader
    mount_uploader :illustration_2, PictureUploader
    mount_uploader :illustration_3, PictureUploader
    mount_uploader :illustration_4, PictureUploader
end
