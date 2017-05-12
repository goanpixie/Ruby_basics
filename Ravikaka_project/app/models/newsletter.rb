class Newsletter < ActiveRecord::Base

	dragonfly_accessor :news do
		after_assign :resize_image
end

def resize_image
   news.process(:thumb, '80x60')
end
end




