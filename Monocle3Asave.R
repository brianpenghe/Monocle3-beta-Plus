#This set of functions saves Monocle3å object to default files
#To be run under Monocle3å environment
Monocle3Asave <- function(MA){
	fd <- fData(MA)
	pd <- pData(MA)
	exp <- exprs(MA)
	save(fd, file="fd")
	save(pd, file="pd")
	save(exp, file="exp")
}
