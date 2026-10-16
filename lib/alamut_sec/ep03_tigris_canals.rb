module AlamutSec
  class TigrisCanals
    attr_accessor :tracking_signal, :escape_route
    def initialize; @tracking_signal = 100; @escape_route = :none; end
    def escape_via_streets!
      @escape_route = :streets
      @tracking_signal = 95 # Aún rastreable
    end
    def escape_via_subterranean_canals!
      @escape_route = :canals
      @tracking_signal = 0 # Firma borrada
    end
  end
end
