module AlamutSec
  class HarbourServitude
    attr_accessor :alarm_state, :key_cloned, :vault_accessed
    def initialize
      @alarm_state = :normal
      @key_cloned = false
      @vault_accessed = false
    end
    def attempt_brute_force!
      @alarm_state = :alarm_raised
    end
    def clone_key_in_clay!
      @key_cloned = true
    end
    def infiltrate_vault!
      if @key_cloned
        @vault_accessed = true
        @alarm_state = :silent_success
      else
        @alarm_state = :guard_intercepted
      end
    end
  end
end
