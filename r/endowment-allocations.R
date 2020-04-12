## Endowment Values
library(ggplot2)
library(hrbrthemes)
library(xlsx)
library(scales)

balance <- read.xlsx("endowment.xlsx",
                     sheetName = "endowment",
                     rowIndex = 1:16,
                     colIndex = 1:2)

ggplot(balance, aes(x=Financial.Year, y=Endowment.Value, group = 1)) +
  geom_line() + ggtitle("Columbia University Endowment") + 
  scale_y_continuous(labels=dollar_format(prefix="$"))

library(treemap)

# Create data
group <- c("group-1","group-2","group-3")
value <- c(13,5,22)
data <- data.frame(group,value)

# treemap
treemap(data,
        index="group",
        vSize="value",
        type="index"
)

breakdown <- read.xlsx("data/endowment.xlsx", 
                       sheetName = "assetAllocations",
                       rowIndex = 1:16,
                       colIndex = 1:7)
### FY 2009

assets2009 <- read.xlsx("endowment.xlsx", 
                        sheetName = "assets",
                        rowIndex = 2:8,
                        colIndex = 13:14)
treemap(assets2009,
        index="Group",
        vSize="allocation",
        type="index", title = "Columbia 2009 Asset Allocation"
)

### FY 2019

assets2019 <- read.xlsx("endowment.xlsx", 
                        sheetName = "assets",
                        rowIndex = 2:8,
                        colIndex = 10:11)

# treemap
treemap(assets2019,
        index="Group",
        vSize="allocation",
        type="index", title = "Columbia 2019 Asset Allocation"
)