
df <- read.csv("HILT Report.csv", header=TRUE, stringsAsFactors=FALSE, na.strings="")
names(df) <- c("affiliation", "questions", "successive", "critical")

df$successive <- factor(df$successive,
                        c("Skeptical", "Somewhere in between", "Enthusiastic"))
df$affiliation <- factor(df$affiliation)
df$critical <- factor(df$critical)

library("ggplot2")
