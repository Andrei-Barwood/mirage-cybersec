module AlamutSec
  class HouseOfWisdomInfil
    attr_accessor :access_level
    def initialize; @access_level = :none; end
    def infiltrate_parchment_depot!
      @access_level = :read_only_archive
    end
  end
end
