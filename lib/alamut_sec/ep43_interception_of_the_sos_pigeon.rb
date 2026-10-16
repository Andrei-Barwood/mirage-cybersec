module AlamutSec
  class AlamutOp43
    attr_accessor :state, :countermeasure_applied
    def initialize
      @state = :threat_active
      @countermeasure_applied = false
    end
    def deploy_creed_countermeasure!
      @countermeasure_applied = true
      @state = :secured
    end
  end
end
