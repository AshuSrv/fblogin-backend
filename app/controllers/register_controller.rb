class RegisterController < ApplicationController 
    def create
        getUser = User.find_by(uid: params['uid'])
        if (getUser == nil) 
            getUser = User.new
            getUser.uid = params['uid']
        end
        getUser.username = params['username']
        getUser.accessToken = params['accessToken']
        getUser.data_access_expiration_time = params['data_access_expiration_time']
        getUser.expiresIn = params['expiresIn']
        getUser.signedRequest = params['signedRequest']
        getUser.save
        render json: {
            status: 'ok',
            user: getUser
        }
    end
end