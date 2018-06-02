class MypageController < ApplicationController

before_action :authenticate_user!

    def mypage
        @submits = current_user.submits
        @submits_count = current_user.submits.length
    end
end