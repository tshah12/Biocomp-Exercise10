
### question 1

## loading data from the file
data= read.table("wages.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)

##### Code below is plotting a data between number of school years vs wages
ggplot(data, aes(x=yearsSchool,y=wage))+
  geom_point() +
  stat_smooth(method="loess") + ### in order to plot the trend line
  xlab("Years of school") +  ## to label the axis
  ylab("wages") +  ## to label the y axis
  theme_classic()


### question 2
data= read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

### plotting bar graph
ggplot(data, aes(x = data$region, y = data$observation)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Region") +
  ylab("miles per gallon-city") +
  theme_classic()





### plotting scatter plot 
ggplot(data, aes(x = data$region, y = data$observation))+
  geom_point() +
  xlab("Region") +
  geom_jitter()+
  ylab("Observation") +
  theme_classic()

## DO the bar and scatter plots tell you different stories?

## YES, with the bar graph we can only see what's the average observation per region is, 
#but with the scatter plot we can see how observations are spread out in every region, which give us more information about the region.


