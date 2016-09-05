class Category < ApplicationRecord
	has_many :posts
	validates :name, presence: true

	 def self.search(query)
	 	where("name like ? OR description like ?", "%#{query}%", "%#{query}%")
	 end

end

