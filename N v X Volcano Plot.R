
 library(readr)
 X_v_C_for_Volcano_Plot <- read_csv("Desktop/PXE_Leila/X v C for Volcano Plot.csv")
 View(X_v_C_for_Volcano_Plot)


# Make a basic volcano plot
with(X_v_C_for_Volcano_Plot, plot(log2FoldChange, -log10(pValue), pch=20, main="N v X Volcano Plot"))

# Add colored points: red if padj<0.05, orange of log2FC>1, green if both)
with(subset(X_v_C_for_Volcano_Plot, pValue<.05 ), points(log2FoldChange, -log10(pValue), pch=20, col="red"))
with(subset(X_v_C_for_Volcano_Plot, abs(log2FoldChange)>1), points(log2FoldChange, -log10(pValue), pch=20, col="orange"))
with(subset(X_v_C_for_Volcano_Plot, pValue<.05 & abs(log2FoldChange)>1), points(log2FoldChange, -log10(pValue), pch=20, col="green"))

# Label points with the textxy function from the calibrate plot
library(calibrate)


