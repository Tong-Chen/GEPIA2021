library(immunedeconv)
#gtex
mixture_file <- read.csv("./gtexTpm.csv")
rownames(mixture_file) <- mixture_file$gene
mixture_file <- mixture_file[,-1]
gtex <- immunedeconv::deconvolute(mixture_file, "quantiseq")
#tcga
mixture_file <- read.csv("./tcgaTpm.csv")
rownames(mixture_file) <- mixture_file$gene
mixture_file <- mixture_file[,-1]
tcga <- immunedeconv::deconvolute(mixture_file, "quantiseq")
