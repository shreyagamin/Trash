setwd("C:/Users/Student/Desktop/NNM24CS352")
getwd()
data<-data.frame(
  ID=c(1,2,3,4,5,6,7,8),
  salary=c(40754,39040,65043,45000,69000,35020,69500,67664)
)
library(dplyr)
result<-data %>% filter(salary>50000)
print(result)
write.csv(data,"salary.csv")
data<-data.frame(
  ID=c(1,2,3,4,5,6,7),
  Name=c("Alice","Bob","charlie","David","Iessica","Flora","Evan"),
  Department=c("CSE","Ise","cybersecurity","Marketing","HR","Tech","IT"),
  Age=c(24,27,22,32,36,22,28),
  gender=c("Female","Male","Male","Male","Female","Female","Male")
)
data
write.csv(data,"employee.csv")


dataset1<-read.csv("employee.csv")
dataset2<-read.csv("salary.csv")
dataset1
dataset2


merged_data<-merge(dataset1,dataset2,by="ID")
print(merged_data)


aggregated_data<-merged_data %>% group_by(gender) %>% summarise(total_salary=sum(salary),average_age=mean(Age),count=(n))
print(aggregated_data)


filtered_data<-merged_data %>% filter(Age>25)
print("filtered data :")
print(filtered_data)


transformed_data<-merged_data %>% mutate(doubled_salary=salary*2,seniority=ifelse(Age>28,"Senior","Junior"))
print(transformed_data)
