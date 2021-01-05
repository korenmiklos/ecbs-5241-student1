use data/derived/data_clean.dta, clear

*create premiums for dependent variables
foreach var of varlist msci* {
  gen p`var' = `var' - rf
}
gen peurostoxx = eurostoxx - rf	
drop msci*
drop eurostoxx

*create slope variables
gen dslope210=gov_bond_yield_10y-gov_bond_yield_2y-(gov_bond_yield_10y[_n-1]-gov_bond_yield_2y[_n-1])

gen dslope27=gov_bond_yield_7y-gov_bond_yield_2y-(gov_bond_yield_7y[_n-1]-gov_bond_yield_2y[_n-1])

gen dslope310=gov_bond_yield_10y-gov_bond_yield_3y-(gov_bond_yield_10y[_n-1]-gov_bond_yield_3y[_n-1])

gen dslope37=gov_bond_yield_7y-gov_bond_yield_3y-(gov_bond_yield_7y[_n-1]-gov_bond_yield_3y[_n-1])

*save data
save "data/derived/data_final.dta", replace