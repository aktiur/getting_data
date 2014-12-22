library(plyr)

# extract features' names from features.txt
feature_names <- read.table('features.txt', col.names=c('n','name'),
                            colClasses=c('numeric', 'character'))$name
N_features <- length(feature_names)

# select the features we are interested in: means and standard deviations only
wanted_features <- grep('mean\\(\\)|std\\(\\)', feature_names)

# transform features' names to remove parenthesis and replace dashes by dots
feature_names <- gsub('\\(\\)','',feature_names)
feature_names <- gsub('-','.',feature_names)


# extract activities' labels from activity_labels.txt
activities <- read.table('activity_labels.txt', col.names=c('n','name'),
                         colClasses=c('numeric', 'character'))$name

# this function allows us to avoid duplicating the code
# to read the testing and training samples
treat <- function(set) {
  file_X <- paste0(set, '/X_', set, '.txt')
  file_y <- paste0(set, '/y_', set, '.txt')
  file_subject <- paste0(set, '/subject_', set, '.txt')
  
  data <- read.table(file_X, col.names=feature_names,
                     colClasses=rep('numeric', times=N_features))
  activities <- read.table(file_y, col.names='Activity', colClasses='factor')
  subjects <- read.table(file_subject, col.names='Subject', colClasses='factor')
  data <- cbind(subjects, activities, data)
  data
}

# obtain the features for both the training and testing samples
train.data <- treat('train')
test.data <- treat('test')
data <- rbind(train.data, test.data)

# subset to keep only the features we are interested in
data <- data[,c(1,2,wanted_features+2)]

# relabel the activities with the names we have extracted earlier
levels(data$Activity) <- activities

# create the tidy data set with the average of each feature for each combination
# of Activity and Subject
molten <- melt(data, id.vars=c('Subject', 'Activity'))
tidy.data <- dcast(molten, Subject + Activity ~ variable, fun.aggregate = mean)

write.table(tidy.data, 'tidy.txt', row.names = F)
