use data/derived/data_final.dta, clear

*run regressions and save tables

foreach bank_return of varlist peurostoxx pmsci_net_price pmsci_price pmsci_price_rt {
	foreach irfactor of varlist return_5y dslope*{
		reg `bank_return' market_pr smb hml `irfactor'
		outreg2 using "output/reg_full.xls", append ctitle(`bank_return'_`irfactor')
}
}

/*separating before and after financial crisis
reg bank_return market_pr smb hml irfac, if date<200700
reg bank_return market_pr smb hml irfac, if date>200700 & date<201000
reg bank_return market_pr smb hml irfac, if date>201000

*spearating before and after zero interest rates
reg bank_return market_pr smb hml irfac, if date<=201405
reg bank_return market_pr smb hml irfac, if date>201405

*spearating wrt zero rates and crisis
reg bank_return market_pr smb hml irfac, if date<200700
reg bank_return market_pr smb hml irfac, if date>200700 & date<=201405
reg bank_return market_pr smb hml irfac, if date>201405
*/

*Create a graph (of any type) in Stata and save.
scatter peurostoxx market_pr, mcolor(red) title("Eurostoxx and market return")
graph save "Graph" "output\scatter_plot_market_eurostoxx.gph", replace

