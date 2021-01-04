*Import data
import delimited "data/derived/data.csv", varnames(1) clear

*convert date type from long to date
tostring date, generate(date_str)
replace date_str=date_str+"01"
generate date_final = date(date_str, "YMD")
format date_final %td

*fix missing values - we need the factors smb, hml and rf for sure, we can drop rows where they are missing
missings report
drop if missing(smb)==1 | missing(hml)==1 | missing(rf)==1

*save data
save "data/derived/data_clean.dta", replace

