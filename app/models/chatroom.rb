class Chatroom < ActiveRecord::Base
    validates_uniqueness_of :title, :case_sensitive => false
    validates :title, presence: true, length: { maximum: 20 }
    validates :password, presence: true
end
