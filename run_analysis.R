
### This functions reads the data of Human Activity Recognition 
### It subsets only the std and mean values of all the measurements 
### It then averages the data with respect to Activity and Subject 
### Files are extracted and copied in the direct HAR_Dataset under working directory
run_analysis<-function()
{

####Importing files

x_train<-read.table("./HAR_Dataset/train/X_train.txt", sep="")
y_train<-read.table("./HAR_Dataset/train/Y_train.txt", sep="")
sub_train<-read.table("./HAR_Dataset/train/subject_train.txt", sep="")
sub_test<-read.table("./HAR_Dataset/test/subject_test.txt", sep="")
x_test<-read.table("./HAR_Dataset/test/X_test.txt", sep="")
y_test<-read.table("./HAR_Dataset/test/Y_test.txt", sep="")


test<-cbind(x_test,y_test,sub_test)

train<-cbind(x_train,y_train,sub_train)

####renaming the cols for activity and subject in test and train 
 names(test)[562]<-"Activity"
 names(train)[562]<-"Activity"
 names(train)[563]<-"Subject"
 names(test)[563]<-"Subject"

######## combining data sets of test and train into har_data
har_data<-rbind(test,train)

############loading features table and identifying the cols with mean and std deviations

features<-read.table("./HAR_Dataset/features.txt",sep='')

features_mean<-sqldf("select * from features where V2 like '%mean%'")
features_std<-sqldf("select * from features where V2 like '%std%'")
features_mean_std<-rbind(features_mean,features_std)

col_list<-as.numeric(features_mean_std[,1])

####extracing the data for mean and std measurements
har_data_ms<-har_data[,c(col_list,562,563)]

####replacing the activity values with descriptions

#cnt<-sqldf("select count(1) from har_data_ms where Activity =1")
#> cnt
#  count(1)
#     1722
#> cnt_2<-sqldf("select count(1) from har_data_ms where Activity =2")  ##1544
#> cnt_3<-sqldf("select count(1) from har_data_ms where Activity =3")  ##1406
#> cnt_4<-sqldf("select count(1) from har_data_ms where Activity =4")  ##1777
#> cnt_5<-sqldf("select count(1) from har_data_ms where Activity =5")  ##1906
#> cnt_6<-sqldf("select count(1) from har_data_ms where Activity =6")  ##1944
#

har_data_ms$Activity[har_data_ms$Activity=="1"]<-"WALKING"
har_data_ms$Activity[har_data_ms$Activity=="2"]<-"WALKING_UPSTAIRS"
har_data_ms$Activity[har_data_ms$Activity=="3"]<-"WALKING_DOWNSTAIRS"
har_data_ms$Activity[har_data_ms$Activity=="4"]<-"SITTING"
har_data_ms$Activity[har_data_ms$Activity=="5"]<-"STANDING"
har_data_ms$Activity[har_data_ms$Activity=="6"]<-"LAYING"

#cnt_walking<-sqldf("select count(1) from har_data_ms where Activity ='WALKING'")
#cnt_walking_upstairs<-sqldf("select count(1) from har_data_ms where Activity ='WALKING_UPSTAIRS'")
#cnt_walking_downstairs<-sqldf("select count(1) from har_data_ms where Activity ='WALKING_DOWNSTAIRS'")
#cnt_sitting<-sqldf("select count(1) from har_data_ms where Activity ='SITTING'")
#cnt_standing<-sqldf("select count(1) from har_data_ms where Activity ='STANDING'")
#cnt_laying<-sqldf("select count(1) from har_data_ms where Activity ='LAYING'")


#####renaming the columns with descriptive values
for( i in 1:86) 
{
 
 col_name<-as.character(features_mean_std[i,2])
 #print (as.character(features_mean_std[i,2]))
 #print(col_name)
 #print(names(har_data_ms)[i])
 names(har_data_ms)[i] <-col_name
 }

 #######final data set having avgs of all 86 cols by activity and subject 
 har_data_ms_avg<-aggregate(har_data_ms[,1:86],by=list(har_data_ms$Activity,har_data_ms$Subject), mean)
 #nrow(har_data_ms_avg)
 
 names(har_data_ms_avg)[1]<-"Activity"
 names(har_data_ms_avg)[2]<-"Subject"
 
 ##Exporting the data to text file to create a tab delimited file
write.table(har_data_ms_avg[,3:90], file = "har_data_analysis.txt",row.names=FALSE, na="",sep="\t")

}