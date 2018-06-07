

6/6/2018

## Study Design

	This study is designed to calculate averages for 79 metrics collected from an experiment on human activity recognition using smart phones. The metrics were averaged for each of 30 subjects and each of 6 activities performed by the subjects during the experiment.	

	The source data for this project come from a Human Activity Recognition Using Smartphone Sensors experiment conducted by SmartLab at UC Irvine in 2012.
		
	The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
	Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
	Using its embedded accelerometer and gyroscope, they researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
	
	Additional information about the data and experiment can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	
	Source Citation:
	========
	Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
	This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
	Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Instructions

The run_analysis.R script reads in data from the UCI HAR Dataset and averages the metrics across subjects and activities.
Details of what the various steps of the script does can be found in the Readme file.

## Code Book

Codebook for the tidy_data.txt ouput datafile
This file contains 180 observations and 81 variables.

### subject
	integer identifying the subject of the experiment
		values 1-30

### activity
	activity performed
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

All variables below contain averages across multiple observation from the original data set.

### time.body.acceleration.mean.x
	Mean body acceleration for the time domain in the x direction
	
### time.body.acceleration.mean.y
	Mean body acceleration for the time domain in the y direction

### time.body.accelereation.mean.z
	Mean body acceleration for the time domain in the z direction

### time.body.acceleration.std.x
	Standard deviation of the body acceleration for the time domain in the x direction

### time.body.acceleration.std.y
	Standard deviation of the body acceleration for the time domain in the x direction

### time.body.acceleration.std.z
	Standard deviation of the body acceleration for the time domain in the x direction

### time.gravity.acceleration.mean.x
	Mean gravity acceleration for the time domain in the x direction

### time.gravity.acceleration.mean.y
	Mean gravity acceleration for the time domain in the y direction

### time.gravity.acceleration.mean.z
	Mean gravity acceleration for the time domain in the z direction

### time.gravity.acceleration.std.x
	Standard deviation of the gravity acceleration for the time domain in the x direction

### time.gravity.acceleration.std.y
	Standard deviation of the gravity acceleration for the time domain in the y direction

### time.gravity.acceleration.std.z
	Standard deviation of the gravity acceleration for the time domain in the z direction

### time.body.acclerationjerk.mean.x
	Mean body jerk acceleration for the time domain in the x direction

### time.body.acclerationjerk.mean.y
	Mean body jerk acceleration for the time domain in the y direction

### time.body.acclerationjerk.mean.z
	Mean body jerk acceleration for the time domain in the z direction

### time.body.acclerationjerk.std.x
	Standard deviation of the body jerk acceleration for the time domain in the x direction

### time.body.acclerationjerk.std.y
	Standard deviation of the body jerk acceleration for the time domain in the y direction

### time.body.acclerationjerk.std.z
	Standard deviation of the body jerk acceleration for the time domain in the z direction
                  
### time.body.gyroscope.mean.x
	Mean body gyroscope for the time domain in the x direction

### time.body.gyroscope.mean.y
	Mean body gyroscope for the time domain in the y direction
                       
### time.body.gyroscope.mean.z
	Mean body gyroscope for the time domain in the z direction

### time.body.gyroscope.std.x 
	Standard deviation of the body gyroscope for the time domain in the x direction                      

### time.body.gyroscope.std.y
	Standard deviation of the body gyroscope for the time domain in the y direction

### time.body.gyroscope.std.z   
	Standard deviation of the body gyroscope for the time domain in the z direction                     

### time.body.gyroscopejerk.mean.x
	Mean body gyroscope jerk for the time domain in the x direction

### time.body.gyroscopejerk.mean.y  
	Mean body gyroscope jerk for the time domain in the y direction                 

### time.body.gyroscopejerk.mean.z 
	Mean body gyroscope jerk for the time domain in the z direction

### time.body.gyroscopejerk.std.x    
	Standard deviation of the body gyroscope jerk for the time domain in the x direction               

### time.body.gyroscopejerk.std.y
	Standard deviation of the body gyroscope jerk for the time domain in the y direction 

### time.body.gyroscopejerk.std.z
	Standard deviation of the body gyroscope jerk for the time domain in the z direction                     

### time.body.accelerationmagnitude.mean
	Mean body accelration magnitude for the time domain              

### time.body.accelerationmagnitude.std
	Standard deviation of the body accelration magnitude for the time domain               

### time.gravity.accelerationmagnitude.mean
	Mean gravity accleration magnitude for the time domain           

### time.gravity.accelerationmagnitude.std 
	Standard deviation of the gravity accleration magnitude for the time domain          

### time.body.accelerationjerkmagnitude.mean  
	Mean body acceleration jerk magnitude for the time domain        

### time.body.accelerationjerkmagnitude.std          
	Standard deviation of the body acceleration jerk magnitude for the time domain

### time.body.gyroscopemagnitude.mean                 
	Mean body gyroscope magnitude in the time domain

### time.body.gyroscopemagnitude.std                 
	Standard deviation of the body gyroscope magnitude in the time domain

### time.body.gyroscopejerkmagnitude.mean             
	Mean body gyroscope jerk magnitude in the time domain	

### time.body.gyroscopejerkmagnitude.std             
	Standard deviation of the body gyroscope jerk magnitude in the time domain

### freq.body.acceleration.mean.x                     
	Mean body acceleration for the frequency domain in the x direction

### freq.body.acceleration.mean.y  
	Mean body acceleration for the frequency domain in the y direction                  

### freq.body.acceleration.mean.z
	Mean body acceleration for the frequency domain in the z direction                    

### freq.body.acceleration.std.x   
	Standard deviation of the body acceleration for the frequency domain in the x direction                

### freq.body.acceleration.std.y     
	Standard deviation of the body acceleration for the frequency domain in the y direction                

### freq.body.acceleration.std.z 
	Standard deviation of the body acceleration for the frequency domain in the z direction                    

### freq.body.acceleration.meanfreq.x   
	Meanfrequency of the body acceleration for the frequency domain in the x direction             

### freq.body.acceleration.meanfreq.y
	Meanfrequency of the body acceleration for the frequency domain in the y direction                 

### freq.body.acceleration.meanfreq.z 
	Meanfrequency of the body acceleration for the frequency domain in the z direction                 

### freq.body.accelerationjerk.mean.x 
	Mean body acceleration jerk for the frequency domain in the x direction               

### freq.body.accelerationjerk.mean.y  
	Mean body acceleration jerk for the frequency domain in the y direction               

### freq.body.accelerationjerk.mean.z   
	Mean body acceleration jerk for the frequency domain in the z direction              

### freq.body.accelerationjerk.std.x    
	Standard deviation of the body acceleration jerk for the frequency domain in the x direction             

### freq.body.accelerationjerk.std.y 
	Standard deviation of the body acceleration jerk for the frequency domain in the y direction                

### freq.body.accelerationjerk.std.z   
	Standard deviation of the body acceleration jerk for the frequency domain in the z direction              

### freq.body.accelerationjerk.meanfreq.x  
	Meanfrequency of the body acceleration jerk for the frequency domain in the x direction          

### freq.body.accelerationjerk.meanfreq.y 
	Meanfrequency of the body acceleration jerk for the frequency domain in the y direction           

### freq.body.accelerationjerk.meanfreq.z 
	Meanfrequency of the body acceleration jerk for the frequency domain in the z direction           

### freq.body.gyroscope.mean.x
	Mean body gyroscope for the frequency domain in the x direction                        

### freq.body.gyroscope.mean.y 
	Mean body gyroscope for the frequency domain in the y direction                        

### freq.body.gyroscope.mean.z
	Mean body gyroscope for the frequency domain in the z direction                         

### freq.body.gyroscope.std.x  
	Standard deviation of the body gyroscope for the frequency domain in the x direction                      

### freq.body.gyroscope.std.y  
	Standard deviation of the body gyroscope for the frequency domain in the y direction                        

### freq.body.gyroscope.std.z  
	Standard deviation of the body gyroscope for the frequency domain in the z direction                      

### freq.body.gyroscope.meanfreq.x  
	Meanfrequency of the body gyroscope for the frequency domain in the x direction                  

### freq.body.gyroscope.meanfreq.y   
	Meanfrequency of the body gyroscope for the frequency domain in the y direction                  

### freq.body.gyroscope.meanfreq.z   
	Meanfrequency of the body gyroscope for the frequency domain in the z direction                  

### freq.body.accelerationmagnitude.mean 
	Mean body accerlation magnitude for the frequency domain            

### freq.body.accelerationmagnitude.std   
	Standard deviation of the body acceleration magnitude for the frequency domain            

### freq.body.accelerationmagnitude.meanfreq   
	Meanfrequency body acceleration magnitude for the frequency domain      

### freq.body.body.accelerationjerkmagnitude.mean 
	Mean body acceleration jerk magnitude for the frequency domain   

### freq.body.body.accelerationjerkmagnitude.std     
	Standard deviation of the acceleration jerk magnitude for the frequency domain

### freq.body.body.accelerationjerkmagnitude.meanfreq
	Meanfrequency of the body acceleration jerk magnitude for the frequency domain

### freq.body.body.gyroscopemagnitude.mean    
	Mean body gyroscope magnitude for the frequency domain       

### freq.body.body.gyroscopemagnitude.std   
	Standard deviation of the body gyroscope magnitude for the frequency domain          

### freq.body.body.gyroscopemagnitude.meanfreq   
	Meanfrequency of the body gyroscope magnitude for the frequency domain    

### freq.body.body.gyroscopejerkmagnitude.mean  
	Mean body gyroscope jerk magnitude for the frequency domain      

### freq.body.body.gyroscopejerkmagnitude.std  
	Standard deviation of the body gyroscope jerk magnitude for the frequency domain      

### freq.body.body.gyroscopejerkmagnitude.meanfreq   
	Meanfrequency of the body gyroscope jerk magnitude for the frequency domain
