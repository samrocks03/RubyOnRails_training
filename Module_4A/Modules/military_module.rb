# ---------------- military module ----------------
module MilitaryModule
  attr_accessor :army_strength

  def initArmyStrength(army_strength)
    @army_strength = army_strength
  end

  def war_win_probability
    @army_strength > 300000
  end
end
