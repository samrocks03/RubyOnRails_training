# require './Classes/country_data'
# require './Module_4A/Modules/loan_module'
# require './Module_4A/Modules/military_module'
# require './Module_4A/Modules/security_council'

require '../Module_4A/Classes/country_data.rb'
require '../Module_4A/Modules/loan_module.rb'
require '../Module_4A/Modules/military_module.rb'
require '../Module_4A/Modules/security_council.rb'
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



cli = CountryData.new
cli.run
