class Movie < ActiveRecord::Base
  attachment :image, type: :image
end
