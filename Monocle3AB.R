#This function converts a Monocle3å object to a Monocle3ß object
#To be run under Monocle3ß environment
MB <- function(MA){
	fd <- featureData(MA)
	pd <- phenoData(MA)
	exp <- exprs(MA)
	MB <- new_cell_data_set(exp, gene_metadata = fd, cell_metadata = pd)
}
