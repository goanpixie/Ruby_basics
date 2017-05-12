class Certificate < ActiveRecord::Base
	dragonfly_accessor :image do
		after_assign :resize_image
end

def resize_image
   image.process(:thumb, '80x60')
end
end
