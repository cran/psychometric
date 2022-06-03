# Applied Psychometric Theory

The following changes have been made since version 0.1.0 of Applied Psychometric Theory

Changes in 0.1.1
1. There was an error in alpha.CI (error fixed)
2. Defaults in alpha.CI have been changed (level = .90, onesided=FALSE)
3. A new function 'MetaTable' has been added to summarize various MetaAnalysis functions.

Changes in 0.1.2
1. There was an error in the df of the calculation of the upper CI for ICC1 and ICC2

Changes in 2.0
1. My affiliation has changed from @umsl.edu to @statefarm.com
2. Item.Exam() was updated to include item.total correlation without item included

Changes in 2.1
1. in the help and R files, na.rm=T is replaced with na.rm=TRUE
2. an extra '(' was removed from the help file description of ICC1.lme()
3. a grammar error was corrected in help file for cRR() resulting in error in reading in newer versions.

Changes in 2.2
1. revised help and Rd files 
2. re-compiled to work under R 2.11.1

Changes to v. 2.3
1. changed affiliation to @gmail.com 
2. used both purrr and dplyr functions to replace attach/detach of data
3. updated function "GmeanRel" from nlme to "gmeanrel" - a dependency for functions ICC1, ICC2
4. re-compiled to work under R 4.2.0
