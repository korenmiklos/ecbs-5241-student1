use data/derived/data_final.dta

*Install packages
ssc install ftools
ssc install outreg2
ssc install reghdfe


*run regressions and save tables
reg peurostoxx market_pr smb hml slope210
outreg2 using "output/reg_eurostoxx_slope210.xlsx"

reg peurostoxx market_pr smb hml slope210
outreg2 using "output/reg_eurostoxx_slope210.xlsx"
reg peurostoxx market_pr smb hml slope210
outreg2 using "output/reg_eurostoxx_slope210.xlsx"
reg peurostoxx market_pr smb hml slope210
outreg2 using "output/reg_eurostoxx_slope210.xlsx"
reg peurostoxx market_pr smb hml slope210
outreg2 using "output/reg_eurostoxx_slope210.xlsx"

*Create a graph (of any type) in Stata and save.*

