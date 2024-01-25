#  ----------------- country data class---------------------------
class CountryData
  def initialize
    @countries = []
  end

  def addCountry(c)
    @countries << c
  end

  def dispCountry
    @countries.each do |c|
      puts "#{c.name}"
      print " - Population: #{c.population},"
      print " GDP: #{c.gdp}, "
      print "States: #{c.states},"
      print " Army Strength: #{c.army_strength}, "
      print " Development Status: #{c.devStatus} \n"
    end
  end

  def run
    loop do
      puts "1.Add Country"
      puts "2. Display Countries"
      puts "3. Display Country Details"
      puts "4. Exit"
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
