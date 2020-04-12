## Line Map -- Endowment Asset Allocations
library(ggplot2)
library(hrbrthemes)
library(xlsx)
library(dplyr)

breakdown <- read.xlsx("endowment.xlsx", 
                       sheetName = "assets",
                       rowIndex = 1:16,
                       colIndex = 1:7)

print(head(breakdown))

breakdownMelted <- reshape2::melt(breakdown, id.var='Financial.Year')

# Line Plot of Endowment Fluctuations for Columbia
ggplot(breakdownMelted, aes(x = Financial.Year, y = value, col = variable)) + geom_line()
