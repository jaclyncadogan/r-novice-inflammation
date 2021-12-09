package(readr)
library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

# question 1
class(data01)
dim(data01)

data01[30, 20]
data01[c(1,3,5), c(10,20)]

# question 2
data01[1:4, 1:10]
data01[5:10, 1:10]

data01[, 'V16']

# question 3
patient_1 <- data01[1, ]
max(patient_1)

sum(patient_1)
max(data01[1, ])

# question 4
data01[2, 7]

max(data01[1, ])
mean(data01[1, ])

# question 5
mean(as.numeric(data01[1, ]))

avg_patient_inflammation <- apply(data01, 1, mean)
avg_day_inflammation <- apply(data01, 2, mean)
plot(avg_day_inflammation)
max_day_inflammation <- apply(data01, 2, max)

# question 6
plot(max_day_inflammation)

# question 7
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)



