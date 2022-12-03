class Chatroom < ApplicationRecord
  has_many :messages

  belongs_to :asker, class_name: "User"
  belongs_to :receiver, class_name: "User"
end
