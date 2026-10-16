module AlamutSec
  class KarkhSlums
    attr_reader :pursuers_diverted
    def initialize; @pursuers_diverted = false; end
    def deploy_honeypot_decoy!
      @pursuers_diverted = true
    end
  end
end
