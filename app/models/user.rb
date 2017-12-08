class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_attached_file :image,
  :storage => :cloudinary,
  :path => ':id/:style/:filename',
  :default_url => "/blank_profile.jpg",
  :styles => {thumb: "100x100#", medium: "256x256#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_uniqueness_of :email, :case_sensitive => false
  validates :display_name, :length => { :maximum => 20 }
end
