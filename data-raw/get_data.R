## ---- makedb
#install.packages("DBI")
#install.packages("RSQLite")
#install.packages('PASWR')

library(DBI)
library(RSQLite)
#titanicdb<-dbConnect(SQLite(),dbname="../data-raw/titanic.sqlite")
#titanicdb<-dbConnect(SQLite(),dbname="../titanic.sqlite")
titanicdb<-dbConnect(SQLite(),dbname="data-raw/titanic.sqlite")



## ---- writeTitanic
library(PASWR)
dbWriteTable(titanicdb, "titanic", titanic3, overwrite=TRUE)
