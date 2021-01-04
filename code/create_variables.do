use data/derived/data_clean.dta, clear

*create premiums for dependent variables
foreach var of varlist msci* {
  gen p`var' = `var' - rf
}
gen peurostoxx = eurostoxx - rf	
drop msci*
drop eurostoxx

*create slope variables
gen slope210=gov_bond_yield_10y-gov_bond_yield_2y
gen dslope210=slope210-slope210[_n-1]
drop slope210

gen slope27=gov_bond_yield_7y-gov_bond_yield_2y
gen dslope27=slope27-slope27[_n-1]
drop slope27

gen slope310=gov_bond_yield_10y-gov_bond_yield_3y
gen dslope310=slope310-slope310[_n-1]
drop slope310

gen slope37=gov_bond_yield_7y-gov_bond_yield_3y
gen dslope37=slope37-slope37[_n-1]
drop slope37

*save data
save "data/derived/data_final.dta", replace