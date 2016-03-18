setwd('~/Pjx/Moocs/EDAR/')
#statesInfo <- read.csv('data/stateData.csv')
#subset(statesInfo, state.region == 1)
#statesInfo[statesInfo$state.region == 1 ,]
#rm statesInfo

# read data
surveyReddit <- read.csv('data/reddit.csv')

# look at the structure
str(surveyReddit)

levels(surveyReddit$age.range)
table(surveyReddit$income.range)
# check if it is a factor
is.factor(surveyReddit$income.range)

# check the levels in the income range statistic
levels(surveyReddit$income.range)

# add order 
surveyReddit$income.range.order <- ordered(surveyReddit$income.range,levels = c( "Under $20,000", "$20,000 - $29,999", "$30,000 - $39,999", "$40,000 - $49,999", "$50,000 - $69,999", "$70,000 - $99,999", "$100,000 - $149,999" , "$150,000 or more" ))

table(surveyReddit$income.range)

surveyReddit$income.range

# now rearrange the age
surveyReddit$age.range <- ordered(surveyReddit$age.range, levels = c("Under 18","18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))

# plot it
library(ggplot2)
qplot(data = surveyReddit, x = age.range)

