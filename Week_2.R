#Week 2 Practice Code

#### If you have not installed the tidyverse yet, run the line below. 
#install.packages("tidyverse")

library(tidyverse)

#####RUN THIS CODE WITHOUT MODIFICATION 
###This will import the survey data we have been working with in this course and drop data with missing 
# rows from the data
dat <- drop_na(read_csv(url("https://www.dropbox.com/s/uhfstf6g36ghxwp/cces_sample_coursera.csv?raw=1")))

# Problem 1
#### Write your code below:

dat_2 <- select(dat, educ, edloan, employ, CC18_308a)
dat_2

# Problem 2
#### Write your code below:
trump_approve_disapprove  <- recode(dat$CC18_308a,
                                    '1' = '1',
                                    '2' = '1',
                                    '3' = '0',
                                    '4' = '0'
                         )

dat_2$trump_approve_disapprove <- trump_approve_disapprove
dat_2


# Problem 3
#### Write your code below:

dat_3 <- dat %>%
  filter(dat$employ == 1 & dat$marstat ==1) %>% 
  summarise(mean_pew_religimp = mean(pew_religimp), median_pew_religimp = median(pew_religimp))
dat_3





