Lab 11
========================================================
author: Premal Shah
date: Oct 8, 2019
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

Installing Bioconductor packages (in console)
========================================================

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()
```

IRanges
========================================================
incremental: true
class: small-code

```r
IRanges(start = , end =, width =, names =)
```
- Create an IRanges object











```
Error in library(IRanges) : there is no package called 'IRanges'
```
