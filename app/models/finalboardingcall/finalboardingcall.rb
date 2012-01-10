module FinalBoardingCall
  class FinalBoardingCall < ActiveRecord::Base
    attr_accessible :old_url , :new_url , :redirect_type
  end
end
