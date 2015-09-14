
#==============================================================================
# Part 1
#==============================================================================
corr <- function(directory,threshold=0)
{
	df_complete = complete(directory)
	correlations <- numeric(0);
	
	df_meets_threshold <- df_complete[ df_complete$nobs>=threshold,];
	for ( id in df_meets_threshold$id)
	{
			fileName=CreateCompleteFileName(directory,id);
			df <- read.csv(fileName);
			df_sn <- df[!is.na(df$sulfate) & !is.na(df$nitrate),];
			correlations <- append(correlations,cor(cbind(df_sn$sulfate,df_sn$nitrate))[1,2]);
	}
	correlations;
}



#==============================================================================
# Part 2
#==============================================================================
complete <- function(directory,id=1:332)
{
	v_nobs <-numeric(0)
	v_ids <- numeric(0)
	for (ID in id)
	{
		result <- try
		(
			fileName=CreateCompleteFileName(directory,ID)
		)
			df = read.csv(fileName);
			n <- nrow( df[ !is.na(df$sulfate) & !is.na(df$nitrate),] );
			if ( n>0)
			{
				v_nobs <- append(v_nobs,n);
				v_ids<- append(v_ids,ID);
			}
#		)
	}
	data.frame(id=v_ids,nobs=v_nobs);
}

#==============================================================================
# Part 1
#==============================================================================
pollutantmean <- function(directory,pollutant="nitrate",id=1:332)
{
	measurements = numeric(0)
	result <- try(
		for ( ID in id)
		{
			fileName = CreateCompleteFileName(directory,ID);
			df = read.csv(fileName);
			measurements <- append(measurements, df[[pollutant]])
		}
	)
	mean(measurements,na.rm=T)

}

#==============================================================================
# Create a fully qualified path name to a csv file with name as
# the numeric 'id' converted to a three character string, and '.csv'
# appended. Prepend the 'directory' path to this csv file name.
#==============================================================================
CreateCompleteFileName <- function( directory='', id)
{
	
	paste(directory,"/",formatC(id,width=3,format='d',flag='0'),".csv",sep="" );
}