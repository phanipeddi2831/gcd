##This code book file gives information about the tidy data set prepared for the "Getting and Cleaning DAta' coursera assignment. 


Number of rows=180
Number of columns =88

All columns except 'activity' and 'subject' are measurement values whose values range between 1- and 1. 



Few columns which are calculated with respect to axis are represented by suffixes with axis label 
for example  'tBodyAcc.mean..X'  means this measure is for X axis 

Columns which begin with t are time measures
Columns which begin with f are frequency measures

#Column Activity gives info about the activities against which the measurements are taken. 
-Values (WALKING ,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING, LAYING,STANDING)

#Column Subject gives info on the subject. There are 30 unique subjects. 
-Values ( 1 to 30)

#Other col names are given below ( -Values range from -1 to 1) 
 "tBodyAcc.mean...X"                    
 "tBodyAcc.mean...Y"                   
 "tBodyAcc.mean...Z"                    
 "tGravityAcc.mean...X"                 
 "tGravityAcc.mean...Y"                
 "tGravityAcc.mean...Z"                
 "tBodyAccJerk.mean...X"                
 "tBodyAccJerk.mean...Y"               
 "tBodyAccJerk.mean...Z"               
 "tBodyGyro.mean...X"                  
 "tBodyGyro.mean...Y"                  
 "tBodyGyro.mean...Z"                  
 "tBodyGyroJerk.mean...X"              
 "tBodyGyroJerk.mean...Y"              
 "tBodyGyroJerk.mean...Z"              
 "tBodyAccMag.mean.."                  
 "tGravityAccMag.mean.."               
 "tBodyAccJerkMag.mean.."              
 "tBodyGyroMag.mean.."                 
 "tBodyGyroJerkMag.mean.."             
 "fBodyAcc.mean...X"                   
 "fBodyAcc.mean...Y"                   
 "fBodyAcc.mean...Z"                   
 "fBodyAcc.meanFreq...X"               
 "fBodyAcc.meanFreq...Y"               
 "fBodyAcc.meanFreq...Z"               
 "fBodyAccJerk.mean...X"               
 "fBodyAccJerk.mean...Y"               
 "fBodyAccJerk.mean...Z"               
 "fBodyAccJerk.meanFreq...X"           
 "fBodyAccJerk.meanFreq...Y"          
 "fBodyAccJerk.meanFreq...Z"           
 "fBodyGyro.mean...X"                   
 "fBodyGyro.mean...Y"                  
 "fBodyGyro.mean...Z"                  
 "fBodyGyro.meanFreq...X"              
 "fBodyGyro.meanFreq...Y"              
 "fBodyGyro.meanFreq...Z"              
 "fBodyAccMag.mean.."                  
 "fBodyAccMag.meanFreq.."              
 "fBodyBodyAccJerkMag.mean.."          
 "fBodyBodyAccJerkMag.meanFreq.."      
 "fBodyBodyGyroMag.mean.."             
 "fBodyBodyGyroMag.meanFreq.."         
 "fBodyBodyGyroJerkMag.mean.."        
 "fBodyBodyGyroJerkMag.meanFreq.."     
 "angle.tBodyAccMean.gravity."         
 "angle.tBodyAccJerkMean..gravityMean."
 "angle.tBodyGyroMean.gravityMean."     
 "angle.tBodyGyroJerkMean.gravityMean."
 "angle.X.gravityMean."                 
 "angle.Y.gravityMean."                
 "angle.Z.gravityMean."                
 "tBodyAcc.std...X"                    
 "tBodyAcc.std...Y"                   
 "tBodyAcc.std...Z"                   
 "tGravityAcc.std...X"                 
 "tGravityAcc.std...Y"                 
 "tGravityAcc.std...Z"                
 "tBodyAccJerk.std...X"               
 "tBodyAccJerk.std...Y"               
 "tBodyAccJerk.std...Z"                
 "tBodyGyro.std...X"                   
 "tBodyGyro.std...Y"                  
 "tBodyGyro.std...Z"                  
 "tBodyGyroJerk.std...X"               
 "tBodyGyroJerk.std...Y"              
 "tBodyGyroJerk.std...Z"              
 "tBodyAccMag.std.."                  
 "tGravityAccMag.std.."                
 "tBodyAccJerkMag.std.."              
 "tBodyGyroMag.std.."                 
 "tBodyGyroJerkMag.std.."             
 "fBodyAcc.std...X"                    
 "fBodyAcc.std...Y"                   
 "fBodyAcc.std...Z"                   
 "fBodyAccJerk.std...X"               
 "fBodyAccJerk.std...Y"                
 "fBodyAccJerk.std...Z"                
 "fBodyGyro.std...X"                  
 "fBodyGyro.std...Y"                  
 "fBodyGyro.std...Z"                   
 "fBodyAccMag.std.."                 
 "fBodyBodyAccJerkMag.std.."         
 "fBodyBodyGyroMag.std.."            
 "fBodyBodyGyroJerkMag.std.." 
 
 