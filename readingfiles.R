# REading data.
read.table()
read.csv
# Read a text file
readLines

# source a script.
source 

# source a script.
dget

# read in a saved workspace.
load

# read in a serialized R object.
unserialize

# for large sets
# if no commented lines in data, set comment.char=""
# data goes into ram
# colClasses arg should be used. This makes things go faster.
# use the nRows argument to help pre-calculate the amount of ram needed.
read.table()

# file connection interfaces. easier to navigate a file with one of these.


file()
gzfile()
bzfile()
url()


#you can read the lines of a text file individually like:
conn <- gzfile("words.gz")
x <- readLines(conn,10)
# Note that the read is done from a connection object.


#as an example size calculation, 1.5M rows, 120 cols per row, one 8 byte number in each column.
# size = 1.5*10^6 * 1.2*10^2*.8*10 = 10^9 * 1.5*1.2*.8

# Writing data can use dumping() and dput(), which can include meta-data of the data frame.
# Not space efficient, since they are textual formats.
#