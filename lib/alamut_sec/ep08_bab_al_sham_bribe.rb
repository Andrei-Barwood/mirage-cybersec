module AlamutSec
  class BabAlShamBribe
    attr_accessor :gate_status
    def initialize; @gate_status = :closed; end
    def offer_silver_coin!
      @gate_status = :open_unlogged
    end
  end
end
