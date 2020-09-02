class Cosmetic < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	belongs_to :color_genre
	attachment :image
end
