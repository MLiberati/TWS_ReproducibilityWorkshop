# Regression analysis and plotting

## Preamble - Load libraries and clear environment
remove(list=ls())

### Step 1 - Load data
load("data/processed_data/rikz_data.Rdata")
head(rikz.data)
names(rikz.data)

### Step 2 - Regression analysis
lm.out <- lm(rikz.data$Richness ~ rikz.data$NAP)
# lm.out <- lm(Richness ~ NAP, data=rikz.data) # alternative format for lm()
summary(lm.out)

### Step 3 - Plot results
plot(rikz.data$NAP, rikz.data$Richness)
abline(lm.out)
