class User < ApplicationRecord
  validates :username, uniqueness: true

  def self.find_or_create_by_auth_hash(auth_hash)
    if auth_hash['provider'] == 'developer'
      existing = User.find_by_username auth_hash['info']['name']
      return existing if existing
      User.create(
        username: auth_hash['info']['name']
      )
    else
      raise 'FACEBOOK CREATE NOT IMPLEMENTED'
    end
  end
end
