
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Calculate the profit for each month
month_profit <- revenue - expenses
month_profit

# Calculate the tax 30%
tax <- round(month_profit * 0.3, digits = 2)
tax

# Calculate the profit after tax for each month (tax rate 30%)
profit_aft_tax <-  month_profit - tax
profit_aft_tax


# Calculate the profit margin for each month - equals to profit after tax divided by revenue
# The value output must be in %
profit_margin <- round(profit_aft_tax / revenue, digits = 2)
profit_margin

# Calculate the good months - where the profit after tax was greater than the mean for the year
year_mean <- round(mean(profit_aft_tax), 2)
year_mean

#Good months (faster way)
good_months <- profit_aft_tax > year_mean
good_months

# Good months
i <- 0
for (m in profit_aft_tax){
  i <- i + 1
  if (m > year_mean) {
    print(paste(i,":", round(m, 2)))
  } 
}

# Calculate the bad months - where the profit after tax was less than the mean for the year
bad_months <- profit_aft_tax < year_mean
bad_months

# Bad months
i <- 0
for (m in profit_aft_tax){
  i <- i + 1
  if (m < year_mean) {
    print(paste(i,":", round(m, 2)))
  } 
}

# Calculate the worst month
paste(which.min(profit_aft_tax),":", min(profit_aft_tax))

# Calculate the best month
paste(which.max(profit_aft_tax), ":", max(profit_aft_tax))





# --------- VISUALIZATION------------
# activating ggplot2
library(ggplot2)
?qplot()

# Creation of a dataframe from the previouse vectors
df <- data.frame(months = seq(1, 12), profit = month_profit, prof_aft_tax = profit_aft_tax, 
                 margin = profit_margin)
df

# Basic barplot - Profit for every month
p <- ggplot(data= df, aes(x=months, y=profit)) + 
            geom_bar(stat="identity", fill="steelblue") +
            theme_minimal()
p

# Basic barplot - Margin for every month
q <- ggplot(data = df, aes(x = months, y = margin)) + 
            geom_bar(stat = 'identity', fill='red')
q

# Basic areaplot - Margin for every month
w <- ggplot(data = df, aes(x = months, y = margin)) + 
            geom_area(stat = 'identity', fill='green')
w





