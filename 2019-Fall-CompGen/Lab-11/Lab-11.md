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

```r
library(IRanges)
var.irange <- IRanges(start = c(4, 5, 6), end = c(11, 12, 13))
var.irange
```

```
IRanges object with 3 ranges and 0 metadata columns:
          start       end     width
      <integer> <integer> <integer>
  [1]         4        11         8
  [2]         5        12         8
  [3]         6        13         8
```
- Width and Names of IRanges

```r
var.named.irange <- IRanges(start = c(4, 5, 6), 
                            width = 4, 
                            names = c("Gene1", "Gene2", "Gene3"))
var.named.irange
```

```
IRanges object with 3 ranges and 0 metadata columns:
            start       end     width
        <integer> <integer> <integer>
  Gene1         4         7         4
  Gene2         5         8         4
  Gene3         6         9         4
```

Accessing IRanges
========================================================
incremental:true
class: small-code

```r
start(var.named.irange)
```

```
[1] 4 5 6
```

```r
end(var.named.irange)
```

```
[1] 7 8 9
```

```r
width(var.named.irange)
```

```
[1] 4 4 4
```

```r
names(var.named.irange)
```

```
[1] "Gene1" "Gene2" "Gene3"
```

Accessing IRanges
========================================================
incremental:true
- How many dimensions does IRanges have?
- Accessing individual elements

```r
var.named.irange[1] # Like a vector
var.named.irange["b"] # Like a named vector
c(var.irange, var.named.irange) # Can be combined
```

Exercise 11.1
========================================================
1. Imagine a genome consisting of only five consecutive genes of lengths 100, 200, 300, 400 and 500, in that order. How would you represent this genome as an IRanges object?
2. Create an IRanges genome using the genes and their lengths in `yeast_data.csv` file.

Manipulating IRanges
========================================================

```r
shift(IR, shift =)

flank(IR, width =, start = T/F)

resize(IR, width =, fix = "start"/"end"/"center")
```

Exercise 11.2
========================================================
1. Starting with the 5-gene genome from the previous exercise, extend the lengths of first 3 genes at the 5' ends and last 2 genes at their 3' ends by 50bp.
2. Assuming all 5 genes have a promoter of 75 bp. Create a new IRanges object for the promoters.
