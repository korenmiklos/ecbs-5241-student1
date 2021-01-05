use data/derived/data_final.dta, clear

*run regressions and save tables to output folder
foreach bank_return of varlist peurostoxx pmsci_net_price pmsci_price pmsci_price_rt {
	foreach irfactor of varlist return_5y dslope*{
		reg `bank_return' market_pr smb hml `irfactor'
		outreg2 using "output/reg_full.xlsx", append ctitle(`bank_return'_`irfactor')
}
}

*Creating a graph and saving it to output folder
scatter peurostoxx market_pr, mcolor(red) title("Eurostoxx and market return") saving("output\scatter_plot_market_eurostoxx.pdf", replace)
