use data/derived/data_clean.dta

*create premiums for dependent variables
foreach var of varlist msci* {
  gen p`var' = `var' - rf
}
gen peurostoxx = eurostoxx - rf	

*create slope variables
gen slope210=gov_bond_yield_10y-gov_bond_yield_2y
gen slope27=gov_bond_yield_7y-gov_bond_yield_2y
gen slope310=gov_bond_yield_10y-gov_bond_yield_3y
gen slope37=gov_bond_yield_7y-gov_bond_yield_3y

*save data
save "data/derived/data_final.dta", replace