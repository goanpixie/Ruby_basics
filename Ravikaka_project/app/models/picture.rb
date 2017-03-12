class Picture < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image
  # validates_attachment :image, presence: true,
  # 					   :content_type => { :content_type => "image/jpg" }
  # do_not_validate_attachment_file_type :image
end
