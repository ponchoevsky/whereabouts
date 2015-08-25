class Report < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "150x150#" }, :default_url => "missing-dog-:style.jpg"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates :name, presence: true
	validates :details, presence: true
	validates :city, presence: true
end
