
if(require("dplyr")){
    print("dplyr package loaded correctly")
    
} else {
    
    print("attempting to install dplyr package")
    install.packages("dplyr")
    
    if(require("dplyr")){
        print("dplyr installed and loaded")
        
    } else {
        stop("could not install required package - dplyr")
    }
}

# This script assumes that the Samsung data in your working directory

# set working directory to UCI HAR Dataset folder
setwd('UCI HAR Dataset/')

##---------------------------------------------------
## Load the data files in the UCI HAR Dataset in order to merge the training and test datasets

print("Loading UCI HAR files...")

## column names for the Training and Test Datasets
features <- read.table("features.txt")[,2]

## Activity file used to set the Activity Labels 
## name the columns AcivityID and ActivityLabel 
activity_lookup <- read.table("activity_labels.txt", col.names = c("activityID", "activityLabel"))

## Prepare Training Data ##
##---------------------------------------------------

# Load the training dataset and set the column names to the names provided in the features files
training.data <- read.table("train/X_train.txt") 
names(training.data) <- features

# Read in the training activity identifiers; this will be used to determine the Activiy Label
training.activityID <- read.table("train/y_train.txt", col.names = "activityID")

# Read in the data for the 30 training subjects in the study
training.subjects <- read.table("train/subject_train.txt", col.names = "subject")

# add the activity IDs and subjects the the training data using column bind
training.data.all <- cbind(training.data, training.activityID, training.subjects)

## Prepare Test Data ##
##---------------------------------------------------
# Load the test dataset and set the column names to the names provided in the features files
test.data <- read.table("test/X_test.txt")
colnames(test.data) <- features

# Read in the training activity identifiers; this will be used to determine the Activiy Label
test.ActivityID <- read.table("test/y_test.txt", col.names = "activityID")

# Read in the data for the 24 test subjects in the study
test.subjects <- read.table("test/subject_test.txt", col.names = "subject")

# add the activity IDs and subjects the the test data using column bind
test.data.all <- cbind(test.data, test.ActivityID, test.subjects)

## Create Combined Training and Test Dataset ##
combined.data <- rbind(training.data.all, test.data.all)

## Determine the Activity Label using the Activity ID
combined.data <- inner_join(combined.data, activity_lookup, by="activityID")

# remove activityID following the inner join to the activity lookup df
combined.data$activityID <- NULL

print("Created combined training and test data")

# Extracts only the measurements on the mean and standard deviation for each measurement;
# Use grep to select all columns matching mean, std, Label or subject

selected.cols <- grepl(pattern = "(mean|std|Label|subject)", features)


all.data <- combined.data[, selected.cols]

#clean up the column names

new.col.names <- colnames(all.data)

new.col.names <- gsub('fBody', 'fBody_', new.col.names)
new.col.names <- gsub('tBody', 'tBody_', new.col.names)
new.col.names <- gsub('tGravity', 'tGravity_', new.col.names)
new.col.names <- gsub('[-]', '_', new.col.names)
new.col.names <- gsub('[()]', '', new.col.names)
new.col.names <- gsub('mean', 'Mean', new.col.names)
new.col.names <- gsub('std', 'Std', new.col.names)

#set the colnames based on the clean up done above
names(all.data) <- new.col.names

# Produce the tidied dataset using dplyr functions -- group_by and summarise_each and arrange the results
all.data <- group_by(all.data, subject, activityLabel) %>% 
               summarise_each(funs(mean)) %>%
                   arrange(subject, activityLabel)

print("Aggregated dataset created")

write.csv(all.data, 'uci_har_tidy.csv', row.names = FALSE, quote = FALSE)

print("Tidy dataset file created; filename uci_har_tidy.csv")
