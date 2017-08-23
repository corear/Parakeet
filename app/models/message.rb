class Message < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture, styles: { thumb: "100x100#" }, default_url: ""
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
    
  validates :user_id, presence: true
  validates :content, presence: true
  default_scope -> { order(created_at: :desc) }
end
