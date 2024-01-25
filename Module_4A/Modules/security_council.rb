# ----------------------- security_council_module -------------------------
module SecurityCouncilModule
  def un_security_council_seat_eligibility
    # to determine whether the country is eligible for a seat in the UN Security Council
    @army_strength > 500000
  end
end
