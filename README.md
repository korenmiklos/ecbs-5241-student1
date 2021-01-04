# coding-assignment

This code is for a personal research: a factor model predicting bank profitability (with bank index return) with fama-french and interest rate factors. At this stage of the research the final variables are not clear yet, so the data contains several different series that I may or may not use at the end. Some of the code lines are only for the purpose of this assignment (eg. graph in stata, funtion in python, etc) they do not actually have any added value to the research. 

The original data files can be found in the data/raw folder, they are dowloaded for many different sources (ECB, Reuters, etc.)
The python code is mainly focused on collecting useful data from the many different files in raw/ and merging them into a dataframe, saved in derived data.  

The stata codes alread uses the derived dataframe. 
The stata codes are broken into different tasks with do files, the master.do collects them in one, they can be run from there together.
The stata code produces many different regressions (as I am not sure about the final variables).
The stata code saves the regression output and the graph in the output folder. 
