class Post < ApplicationRecord
	belongs_to :category
	belongs_to :user
	has_many :comments

  	validates :title, :body, :category_id, presence: true
  	validates :title, uniqueness: true

  	has_attached_file :image, :default_url => ":style/missing.png"
 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	 def self.search(query)
	 	where("title like ? OR body like ?", "%#{query}%", "%#{query}%")
	 end
end
