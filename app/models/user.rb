class User < ActiveRecord::Base

  def self.from_omniauth(auth_hash)
    # user = User.new

    access_token = auth_hash['credentials']['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=id,name,picture.height(500).width(500)")

    # user.id = auth_hash['uid']
    # user.name = auth_hash['info']['name']
    # user.location = auth_hash['info']['location']
    # user.image_url = auth_hash['info']['image']
    # user.save!
    # user
  end
end
