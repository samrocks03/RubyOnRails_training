# ------------------------ loan_module ------------------------
module LoanModule
  def loan_eligibility
    # to determine whether the country is eligible for a loan from IMF or WB
    @gdp > 1000000
  end
end
