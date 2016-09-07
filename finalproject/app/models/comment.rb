class Comment < ApplicationRecord
	belongs_to :post

	validates :name, presence: true
	validates :email, presence: true, email: true

end
