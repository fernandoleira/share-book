class Book < ApplicationRecord
  has_attached_file :image, url: "/style/:hash.:extension", hash_secret: "abc123", style: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, :content_type => { :content_type => "image/jpg" }
end
