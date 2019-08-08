#This function plots a UMAP, cluster cells, learns the graph and fixes the partitions
#Preprocessing has to be done before this step
UMAPLearnGraphFixPartition <- function(cds){
	cds <- reduce_dimension(cds,reduction_method = 'UMAP')
	cds <- cluster_cells(cds)
	cds <- learn_graph(cds,use_partition = FALSE)
	cds@clusters$UMAP$partitions[!cds@clusters$UMAP$partitions=="1"] <- "1"
	cds <- learn_graph(cds,use_partition = TRUE)
	return(cds)
}
