#This function loads fd, pd and exp to a Monocle3ß object
#To be run under Monocle3ß environment
Monocle3Bload <- function(){
	load("fd")
	load("pd")
	load("exp")
	new_cds <- new_cell_data_set(exp, gene_metadata = fd, cell_metadata = pd)
	return(new_cds)
	}
