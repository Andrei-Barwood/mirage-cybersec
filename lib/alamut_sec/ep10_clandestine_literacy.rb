module AlamutSec
  class ClandestineLiteracy
    attr_accessor :languages_mastered, :memory_trace
    def initialize; @languages_mastered = []; @memory_trace = :none; end
    def study_scripts!
      @languages_mastered = [:arabic, :greek, :syriac]
    end
    def melt_wax_tablet!
      @memory_trace = :clean_wax
    end
  end
end
