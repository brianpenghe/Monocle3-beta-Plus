#This function takes a subset of the data based on a Boolean vector
#And then it does PCA and plots latent
ClusterSubsetPCA <- function(cds,idents,genes=NULL){
	cell_type1_cells <- row.names(subset(colData(cds), orig.ident %in% idents))
	cds2 <- cds[,cell_type1_cells]
	cds2 <- preprocess_cds(cds2, use_genes=genes, num_dim=100)
	return(cds2)
}
