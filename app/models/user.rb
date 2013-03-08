class User < ActiveRecord::Base
  attr_accessible :body, :email, :name, :image, :video
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
   :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/image/:id/:style.:extension"

  has_attached_file :video,
  :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/video/:id/:style.:extension"
end
  

