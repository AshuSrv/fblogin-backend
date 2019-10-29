class User < ApplicationRecord
    def self.find_or_create_from_userinfo(userinfo)
        user = where(uid: userinfo['uid']).first_or_create
        user.update(
            username: userinfo['username'],
            accessToken: userinfo['accessToken'],
            data_access_expiration_time: userinfo['data_access_expiration_time'],
            expiresIn: userinfo['expiresIn'],
            signedRequest: userinfo['signedRequest'],
        )
        user
    end
end