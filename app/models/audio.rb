class Audio < ApplicationRecord
    has_one_attached :audio
    validates_presence_of :name ,:author 

end
