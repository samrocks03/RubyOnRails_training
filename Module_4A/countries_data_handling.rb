# ----------- Loan Module -----------
module LoanModule
  def loan_eligibility
    @gdp > 1_000_000
  end
end


# ------------ Security Council Module -----------
module SecurityCouncilModule
    def un_security_council_seatEligibility
        @army_strength > 500_000
    end
end


# ------------ Military Module --------------------
module MilitaryModule
    attr_accessor :army_strength

    def init_army_strength(army_strength)
        @army_strength = army_strength
    end

    def warWinningProbability
        @army_strength > 300_000
    end
end

class Country
    include LoanModule
    include SecurityCouncilModule


    attr_accessor :name,:population,:gdp,:states,:army_strength,:dev_status 
    

    def def initialize(name,)
      @name,@population,@gdp,@states,@army_strength,@dev_status = name,population,gdp,states,army_strength,dev_status
    end
end


class CountryData
    def initialize
        @countries = [] #to handle all countries
    end

    def addCountry(country)
        @countries << country
    end

    def displayCountries
    end
end