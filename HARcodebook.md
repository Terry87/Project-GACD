## Code Book for Samsung HAR Means Dataset
This code book describes the variables in the dataset contained in the file "har_means.txt".

The dataset is derived from logged data from accelerometer and gyroscope sensors embedded in Samsung Galaxy S smartphones. The logged data was collected from the phones of 30 subjects while they were performing various activities. This data comes from the Human Activity Recognition database, and was downloaded from the following Internet site:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset described here was obtained from the logged data by extracting the 66 columns containing means and standard deviations. For each of these columns a mean value was calculated for each of the six activities for each of the 30 subjects. This results in a dataset containing 180 rows and 68 columns.

The dataset was created by an R script using the `write.table()` function. It can be read back into an R data frame using the `read.table()` function:

df = read.table("har_means.txt", header=TRUE)

As all of the sensor variables have been normalised to be in the range [-1,1] no units have been provided for the variables.

The table below gives a description of the 68 variables contained in the dataset.

<HTML>
<BODY TEXT="#000000">
<TABLE CELLSPACING="0" COLS="4" BORDER>
	<COLGROUP WIDTH="223"></COLGROUP>
	<COLGROUP WIDTH="300"></COLGROUP>
	<COLGROUP WIDTH="77"></COLGROUP>
	<COLGROUP WIDTH="202"></COLGROUP>
	<TR>
		<TD HEIGHT="25" ALIGN="LEFT" VALIGN=MIDDLE><B><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Variable</FONT></B></TD>
		<TD ALIGN="LEFT" VALIGN=MIDDLE><B><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Description</FONT></B></TD>
		<TD ALIGN="LEFT" VALIGN=MIDDLE><B><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Type</FONT></B></TD>
		<TD ALIGN="LEFT" VALIGN=MIDDLE><B><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Range</FONT></B></TD>
	</TR>
	<TR>
		<TD HEIGHT="18" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Subject</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Identifier of the subject</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Integer</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP SDNUM="3081;0;DD/MM/YY"><FONT FACE="Times New Roman" SIZE="3" SIZE="3">[1,30]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Activity</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">The activity that was being performed when the measurements were taken</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">Text</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">{WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3" SIZE="3">tBodyAcc-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body acceleration measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAcc-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body acceleration measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAcc-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body acceleration measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAcc-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body acceleration measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAcc-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body acceleration measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAcc-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body acceleration measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAcc-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain gravity acceleration measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAcc-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain gravity acceleration measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAcc-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain gravity acceleration measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAcc-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain gravity acceleration measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAcc-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain gravity acceleration measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAcc-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain gravity acceleration measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerk-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body jerk signal measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerk-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body jerk signal measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerk-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body jerk signal measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerk-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body jerk signal measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerk-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body jerk signal measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerk-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body jerk signal measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyro-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope signal in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyro-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope signal in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyro-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope signal in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyro-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope signal in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyro-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope signal in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyro-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope signal in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerk-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope jerk signal in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerk-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope jerk signal in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerk-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope jerk signal in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerk-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope jerk signal in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerk-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope jerk signal in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerk-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope jerk signal in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body acceleration signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body acceleration signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAccMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain gravity acceleration signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tGravityAccMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain gravity acceleration signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerkMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body jerk signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyAccJerkMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body jerk signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerkMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised time domain body gyroscope jerk signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">tBodyGyroJerkMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised time domain body gyroscope jerk signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAcc-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body acceleration measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAcc-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body acceleration measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAcc-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body acceleration measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAcc-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body acceleration measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAcc-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body acceleration measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="82" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAcc-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body acceleration measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccJerk-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body jerk signal measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccJerk-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body jerk signal measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccJerk-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body jerk signal measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccJerk-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body jerk signal measurement in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccJerk-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body jerk signal measurement in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccJerk-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body jerk signal measurement in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyGyro-mean()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body gyroscope signal in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyGyro-mean()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body gyroscope signal in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyGyro-mean()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body gyroscope signal in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyGyro-std()-X</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body gyroscope signal in the X direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyGyro-std()-Y</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body gyroscope signal in the Y direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyGyro-std()-Z</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body gyroscope signal in the Z direction </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body acceleration signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyAccMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body acceleration signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyBodyAccJerkMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body jerk signal magnitude </FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyBodyAccJerkMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body jerk signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyBodyGyroMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body gyroscope signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyBodyGyroMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body gyroscope signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyBodyGyroJerkMag-mean()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the mean of the normalised frequency domain body gyroscope jerk signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
	<TR>
		<TD HEIGHT="66" ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">fBodyBodyGyroJerkMag-std()</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Mean over all values for the subject and activity of the standard deviation of the normalised frequency domain body gyroscope jerk signal magnitude</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">Numeric</FONT></TD>
		<TD ALIGN="LEFT" VALIGN=TOP><FONT FACE="Times New Roman" SIZE="3">[-1,1]</FONT></TD>
	</TR>
</TABLE>
<!-- ************************************************************************** -->
</BODY>

</HTML>
