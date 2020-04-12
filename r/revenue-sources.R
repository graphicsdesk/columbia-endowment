## Line Map -- Endowment Asset Allocations
library(ggplot2)
library(hrbrthemes)
library(xlsx)
library(dplyr)

revenue <- read.xlsx("endowment.xlsx", 
                     sheetName = "revenue",
                     rowIndex = 1:15,
                     colIndex = 1:6)

revenueMelted <- reshape2::melt(revenue, id.var='Financial.Year')
head(breakdownMelted)

ggplot(revenueMelted, aes(x= Financial.Year, y = value, col = variable)) + geom_line()