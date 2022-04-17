class FriendValidator < ActiveModel::Validator
  def validate(record)
    unless User.exists? record.friend_id
      record.errors.add :friend_id, 'User does not exist'
    end
  end
end

class Friend < ApplicationRecord
  belongs_to :user
  validates_with FriendValidator
end
