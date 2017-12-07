class Message < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture,
  :storage => :cloudinary,
  :path => ':id/:style/:filename',
  :default_url => "/blank_profile.jpg",
  :styles => {thumb: "100x100#"}
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
    
  validates :user_id, presence: true
  validates :content, presence: true
  default_scope -> { order(created_at: :desc) }
end
