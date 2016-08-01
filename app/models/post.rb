class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	
	def self.search(search)
		where("name LIKE ?", "%#{search}%") 
	  where("content LIKE ?", "%#{search}%")
	 end
end
