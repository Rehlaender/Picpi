class Good < ActiveRecord::Base
  belongs_to :good_type

  mount_uploader :image, GoodUploader
end
