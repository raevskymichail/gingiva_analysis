
if (!require("pacman")) install.packages("pacman")
pacman::p_load(
    "readr", "optparse", "grid", "ggthemes", "scales",
    "VennDiagram", "dplyr", "gridExtra", "ggplot2", "ggpubr"
)

amc_2d <- openxlsx::read.xlsx("./data/pathway_activation/2D_diff_AMC_vs_2D_nondiff_AMC_PAL.xlsx", sheet = "PAL2",
                     colNames = TRUE, rowNames = FALSE)
smc_2d <- openxlsx::read.xlsx("./data/pathway_activation/2D_diff_SMC_vs_2D_nondiff_SMC_PAL.xlsx", sheet = "PAL2",
                     colNames = TRUE, rowNames = FALSE)
amc_3d <- openxlsx::read.xlsx("./data/pathway_activation/3D_diff_AMC_vs_3D_nondiff_AMC_PAL.xlsx", sheet = "PAL2",
                     colNames = TRUE, rowNames = FALSE)
smc_3d <- openxlsx::read.xlsx("./data/pathway_activation/3D_diff_SMC_vs_3D_nondiff_SMC_PAL.xlsx", sheet = "PAL2",
                     colNames = TRUE, rowNames = FALSE)


test_randomness <- function(genes_1, genes_2, number_1, number_2, number) {
  n <- c()
  for (i in c(1:1000)) {
    n <- c(n, length(intersect(sample(genes_1, number_1), sample(genes_2, number_2))))
    # print(length(intersect(sample(genes_1, number_1), sample(genes_2, number_2))))
  }
  print(sum(n >= number) / length(n))
#   return(n)
}

intersect_degs <- function(a, b) {
#    a <- a[a$Case_geomean > 0 & a$pvalue < 0.05,]
#    b <- b[b$Case_geomean > 0 & b$pvalue < 0.05,]
  #  a_pos <- a[a$Case_geomean > 0 & a$pvalue < 0.05,]
  #  b_pos <- b[b$Case_geomean > 0 & b$pvalue < 0.05,]
  #  a_neg <- a[a$Case_geomean < 0 & a$pvalue < 0.05,]
  #  b_neg <- b[b$Case_geomean < 0 & b$pvalue < 0.05,]
   a_pos <- a[a$Case_geomean >= 0,]
   b_pos <- b[b$Case_geomean >= 0,]
   a_neg <- a[a$Case_geomean < 0,]
   b_neg <- b[b$Case_geomean < 0,]
   unique_a <- setdiff(a$Pathway, b$Pathway)
   unique_b <- setdiff(b$Pathway, a$Pathway)
   intersect_ab <- intersect(a$Pathway, b$Pathway)
   print(paste0("Unique A: ", length(unique_a)))
   print(paste0("Unique B: ", length(unique_b)))
   print(paste0("Intersection: ", length(intersect_ab)))
#    print(a[a$Pathway %in% intersect_ab,])
   test_randomness(a$Pathway, b$Pathway, length(unique_a), length(unique_b), length(intersect_ab))
   print("--------")
   unique_a <- setdiff(a_pos$Pathway, b_pos$Pathway)
   unique_b <- setdiff(b_pos$Pathway, a_pos$Pathway)
   intersect_ab <- intersect(a_pos$Pathway, b_pos$Pathway)
   print(paste0("Unique positive A: ", length(unique_a)))
   print(paste0("Unique positive B: ", length(unique_b)))
   print(paste0("Positive intersection: ", length(intersect_ab)))
   test_randomness(a$Pathway, b$Pathway, length(unique_a), length(unique_b), length(intersect_ab))
   print("--------")
   unique_a <- setdiff(a_neg$Pathway, b_neg$Pathway)
   unique_b <- setdiff(b_neg$Pathway, a_neg$Pathway)
   intersect_ab <- intersect(a_neg$Pathway, b_neg$Pathway)
   print(paste0("Unique negative A: ", length(unique_a)))
   print(paste0("Unique negative B: ", length(unique_b)))
   print(paste0("Negative intersection: ", length(intersect_ab)))
   test_randomness(a$Pathway, b$Pathway, length(unique_a), length(unique_b), length(intersect_ab))
#    test_randomness(a, b, length(unique_a), length(unique_b), length(intersect_ab))
}


intersect_degs(smc_2d, amc_2d)
intersect_degs(amc_2d, amc_3d)
intersect_degs(smc_3d, amc_3d)
intersect_degs(smc_2d, smc_3d)

# a <- intersect(smc_2d$gene, amc_2d$gene)

# dim(smc_2d[smc_2d$log2FoldChange > 0,])
# dim(smc_2d[smc_2d$log2FoldChange < 0,])

# b <- amc_2d[amc_2d$gene %in% a,]
# c <- smc_2d[smc_2d$gene %in% a,]

# dim(b[b$log2FoldChange > 0,])
# dim(b[b$log2FoldChange < 0,])
# dim(c[c$log2FoldChange > 0,])
# dim(c[c$log2FoldChange < 0,])


print_uniq_pathway_in_a <- function(a, b, c) {
   a_pos <- a[a$Case_geomean >= 0,]
   b_pos <- b[b$Case_geomean >= 0,]
   c_pos <- c[c$Case_geomean >= 0,]
   a_neg <- a[a$Case_geomean < 0,]
   b_neg <- b[b$Case_geomean < 0,]
   c_neg <- c[c$Case_geomean < 0,]
   intersect_ab <- intersect(a$Pathway, b$Pathway)
   intersect_ac <- intersect(a$Pathway, c$Pathway)
   print(paste0("Unique A: ", length(setdiff(a$Pathway, unique(c(intersect_ab, intersect_ac))))))
   print("--------")
   intersect_ab <- intersect(a_pos$Pathway, b_pos$Pathway)
   intersect_ac <- intersect(a_pos$Pathway, c_pos$Pathway)
   print(paste0("Unique Positive A: ", length(setdiff(a_pos$Pathway, unique(c(intersect_ab, intersect_ac))))))
   print("--------")
   intersect_ab <- intersect(a_neg$Pathway, b_neg$Pathway)
   intersect_ac <- intersect(a_neg$Pathway, c_neg$Pathway)
   print(paste0("Unique Negative A: ", length(setdiff(a_neg$Pathway, unique(c(intersect_ab, intersect_ac))))))
}

print_uniq_pathway_in_a(smc_2d, amc_2d, smc_3d)
print_uniq_pathway_in_a(amc_2d, smc_2d, amc_3d)
print_uniq_pathway_in_a(amc_3d, amc_2d, smc_3d)
print_uniq_pathway_in_a(smc_3d, amc_3d, smc_2d)
