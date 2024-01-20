# ---------------- military module ---------------- 
module MilitaryModule
    attr_accessor :army_strength
  
    def initArmyStrength(army_strength)
      @army_strength = army_strength
    end
  
    def war_win_probability
      return @army_strength > 300000
    end
  end
  
  
  # ------------------------ loan_module ------------------------
  module LoanModule
    def loan_eligibility
      # to determine whether the country is eligible for a loan from IMF or WB
      return @gdp > 1000000
    end
  end
  
  # ----------------------- security_council_module -------------------------
  module SecurityCouncilModule
    def un_security_council_seat_eligibility
      # to determine whether the country is eligible for a seat in the UN Security Council
      return @army_strength > 500000
    end
  end
  
  
  # ------------------------ country Class -----------------------------------
  class Country
    include LoanModule
    include SecurityCouncilModule
    include MilitaryModule
  
    attr_accessor :name, :population, :gdp, :states, :devStatus
  
    def initialize(name, population, gdp, states, army_strength, devStatus)
      @name = name
      @population = population
      @gdp = gdp
      @states = states
      initArmyStrength(army_strength)
      @devStatus = devStatus
    end
  end
  

  # country_data_cli.rb
  class CountryData
    def initialize
      @countries = []
    end
  
    def addCountry(c)
      @countries << c
    end
  
    def dispCountry
      @countries.each do |c|
        puts "#{c.name} - Population: #{c.population}, GDP: #{c.gdp}, States: #{c.states}, Army Strength: #{c.army_strength}, Development Status: #{c.devStatus}"
      end
    end
    def run
        loop do
          puts "\n1. Add Country\n2. Display Countries\n3. Display Country Details\n4. Exit"
          choice = gets.chomp.to_i
    
          case choice
          when 1
            addCountry(getCDetails)
          when 2
            dispCountry
          when 3
            dispCountryDetails(getCDetails)  # Corrected method name here
            dispLoanEligibility(@countries.last)
            dispUnSecurityCouncilEligibilty(@countries.last)
            dispWarWinProbability(@countries.last)
          when 4
            break
          else
            puts "Invalid choice. Please try again."
          end
        end
      end  
    private
  
    def getCDetails
      puts "Enter country details:"
      print "Name: "
      name = gets.chomp
      print "Population: "
      population = gets.chomp.to_i
      print "GDP: "
      gdp = gets.chomp.to_i
      print "States: "
      states = gets.chomp.to_i
      print "Army Strength: "
      army_strength = gets.chomp.to_i
      print "Development Status: "
      devStatus = gets.chomp
  
      Country.new(name, population, gdp, states, army_strength, devStatus)
    end
  
    def dispCountryDetails(country)
      puts "#{country.name} - Population: #{country.population}, GDP: #{country.gdp}, States: #{country.states}, Army Strength: #{country.army_strength}, Development Status: #{country.devStatus}"
    end
  
    def dispLoanEligibility(country)
      puts "Loan Eligibility:"
      puts "IMF: #{country.loan_eligibility ? 'Eligible' : 'Not Eligible'}"
      puts "WB: #{country.loan_eligibility ? 'Eligible' : 'Not Eligible'}"
    end
  
    def dispUnSecurityCouncilEligibilty(country)
      puts "UN Security Council Seat Eligibility: #{country.un_security_council_seat_eligibility ? 'Eligible' : 'Not Eligible'}"
    end
  
    def dispWarWinProbability(country)
      puts "War Win Probability: #{country.war_win_probability ? 'High' : 'Low'}"
    end
  end
  
  # Example usage
  cli = CountryData.new
  cli.run
  