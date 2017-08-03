class Post < ApplicationRecord

  validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  #attr_accessor :image_file_name
  #attr_accessor :image_content_type

end


