class User < ApplicationRecord
  def self.from_omniauth(auth)
    self.where(email: auth.info.email).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid

      unless auth.info.blank?
        user.name = auth.info.name
        user.image = auth.info.image
      end

      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at) unless auth.credentials.expires_at.nil?
      user.save!
    end
  end
end
