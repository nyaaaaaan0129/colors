class Cosmetic < ApplicationRecord
	belongs_to :user
	attachment :image
end
