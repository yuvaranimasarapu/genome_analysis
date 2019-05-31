if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("DESeq2")

#browseVignettes("DESeq2")
install.packages("tidyverse")
install.packages('pheatmap')

library(DESeq2)
library(tidyverse)
library(pheatmap)

setwd ("C:/Users/User/Documents/2 Sem/genome analysis/lab")

# Reading in files
SRR6040092_counts <- read.delim("C:/Users/User/Documents/2 Sem/genome analysis/lab/rna_SRR6040092_counts.txt",header=FALSE)
#View(rna_SRR6040092_counts)
SRR6040093_counts <- read.delim("C:/Users/User/Documents/2 Sem/genome analysis/lab/rna_SRR6040093_counts.txt",header=FALSE)
#View(rna_SRR6040093_counts)
SRR6040096_counts <- read.delim("C:/Users/User/Documents/2 Sem/genome analysis/lab/rna_SRR6040096_counts.txt", header=FALSE)
#View(rna_SRR6040096_counts)
SRR6040094_counts <- read.delim("C:/Users/User/Documents/2 Sem/genome analysis/lab/rna_SRR6040094_counts.txt", header=FALSE)
#View(rna_SRR6040094_counts)

# Naming columns
names(SRR6040092_counts)[2]<- "LEAF"
names(SRR6040093_counts)[2]<- "ROOT"
names(SRR6040096_counts)[2]<- "STEM" 
names(SRR6040094_counts)[2]<- "ARIL"

# Merge data frames
countData <- merge(SRR6040092_counts, SRR6040093_counts, by="V1")
countData <- merge(countData,SRR6040096_counts, by="V1")
countData <- merge(countData,SRR6040094_counts, by="V1")

# Name gene column
names(countData)[1] <- "gene"

# Remove unwanted lines from data frame
countData <- countData[-c(1,2,3,4,5),]

condition <- c("non-fruit","non-fruit","non-fruit","fruit" )
names <- countData[,-1]
metaData <- data.frame(row.names=colnames(names), condition)
countData <- data.frame(row.names=countData[,1], LEAF=countData[2], ROOT=countData[3], STEM=countData[4], ARIL=countData[5])

#View(metaData)
#View(countData)

# Analyse
dds <- DESeqDataSetFromMatrix(countData=countData, colData=metaData, design=~condition)
dds <- DESeq(dds)

# PCA
rld <- rlog(dds)
colData(dds)
plotPCA(rld,intgroup=c("condition", "sizeFactor"))

#MA
res <- results(dds)
plotMA(res)

#Ordering
head(res)
summary(res)
resOrdered <- res[order(res$padj),]  #order by padj(adjusted p-value), small padj indicates large difference
resOrdered=as.data.frame(resOrdered)
head(resOrdered)
resOrdered=na.omit(resOrdered)  #delete NA values
write.csv(resOrdered,"resOrdered.csv")

# Export results to csv
write.table(as.data.frame(res), file="C:/Users/User/Documents/2 Sem/genome analysis/lab/resOrdered.csv", 
            sep="\t", quote=FALSE, col.names=NA)

#Heatmap
select<-order(rowMeans(counts(dds,normalized=TRUE)),decreasing = TRUE)[1:20] 
nt<-normTransform(dds)
log2.norm.counts<-assay(nt)[select,]
df<-as.data.frame(colData(dds))
pheatmap(log2.norm.counts,cluster_rows = TRUE,show_rownames = TRUE,cluster_cols = TRUE,annotation_col = df)