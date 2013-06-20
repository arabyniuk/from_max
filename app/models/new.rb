class New < ActiveRecord::Base
  attr_accessible :content, :title, :image

  active_admin_translates :title, :content

  mount_uploader :image, ImageUploader
end
