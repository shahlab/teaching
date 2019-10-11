Lab 07
========================================================
author: 
date: 02/12/2018
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

IRanges
========================================================
incremental: true
class: small-code

```r
IRanges(start= , end=, width=, names=)
```
- Create an IRanges object

```r
library(IRanges)
var.irange <- IRanges(start = c(4,5,6), end = c(11,12,13))
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
var.named.irange <- IRanges(start = c(4,5,6), 
                            width = 4, 
                            names = c("Gene1","Gene2","Gene3"))
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
var.named.irange["b"] # Like a list
c(var.irange, var.named.irange) # Can be combined
```

Exercise 7.1
========================================================
1. Imagine a genome consisting of only five consecutive genes of lengths 100, 200, 300, 400 and 500, in that order. How would you represent this genome as an IRanges object?
2. Create an IRanges genome using the genes and their lengths in `homework_data.csv` file (lab 03).

Manipulating IRanges
========================================================

```r
shift(IR, shift=)

flank(IR, width=, start=T/F)

resize(IR, width=, fix="start"/"end"/"center")
```

Exercise 7.2
========================================================
1. Starting with the 5-gene genome from the previous exercise, extend the lengths of first 3 genes at the 5' ends and last 2 genes at their 3' ends by 50bp.
2. Assuming all 5 genes have a promoter of 75 bp. Create a new IRanges object for the promoters.

GRanges
========================================================
class: small-code
incremental:true

```r
# Install GenomicRanges
# source("http://www.bioconductor.org/biocLite.R")
# biocLite("GenomicRanges")
library(GenomicRanges)
```


```r
GRanges(seqnames = , 
        strand = , 
        ranges = IRanges)
```

GRanges
========================================================
class: small-code

```r
var.grange <- GRanges(seqnames = "chr1", 
                      strand = c("+","-","+"), 
                      ranges = var.irange)
```

GRanges
========================================================

```r
var.grange
```

```
GRanges object with 3 ranges and 0 metadata columns:
      seqnames    ranges strand
         <Rle> <IRanges>  <Rle>
  [1]     chr1   [4, 11]      +
  [2]     chr1   [5, 12]      -
  [3]     chr1   [6, 13]      +
  -------
  seqinfo: 1 sequence from an unspecified genome; no seqlengths
```

GRanges with metadata
========================================================
class: small-code
incremental:true

```r
values(var.grange) <- DataFrame(gname = c("gene1","gene2","gene3"),
                                type = c("enzyme","structural","enzyme"))
```

```r
var.grange
```

```
GRanges object with 3 ranges and 2 metadata columns:
      seqnames    ranges strand |       gname        type
         <Rle> <IRanges>  <Rle> | <character> <character>
  [1]     chr1   [4, 11]      + |       gene1      enzyme
  [2]     chr1   [5, 12]      - |       gene2  structural
  [3]     chr1   [6, 13]      + |       gene3      enzyme
  -------
  seqinfo: 1 sequence from an unspecified genome; no seqlengths
```

GRanges with metadata
========================================================
class: small-code
incremental:true

```r
var.grange
```

```
GRanges object with 3 ranges and 2 metadata columns:
      seqnames    ranges strand |       gname        type
         <Rle> <IRanges>  <Rle> | <character> <character>
  [1]     chr1   [4, 11]      + |       gene1      enzyme
  [2]     chr1   [5, 12]      - |       gene2  structural
  [3]     chr1   [6, 13]      + |       gene3      enzyme
  -------
  seqinfo: 1 sequence from an unspecified genome; no seqlengths
```

```r
seqinfo(var.grange)
```

```
Seqinfo object with 1 sequence from an unspecified genome; no seqlengths:
  seqnames seqlengths isCircular genome
  chr1             NA         NA   <NA>
```

```r
seqlevels(var.grange) <- c("chr1","chr-mt","chr2")
seqlengths(var.grange) <- c("chr1"=100, "chr-mt"=200, "chr2"=400)
isCircular(var.grange) <- c(FALSE, TRUE,FALSE)
genome(var.grange) <- "Mouse"
```

GRanges with metadata
========================================================
class: small-code

```r
var.grange
```

```
GRanges object with 3 ranges and 2 metadata columns:
      seqnames    ranges strand |       gname        type
         <Rle> <IRanges>  <Rle> | <character> <character>
  [1]     chr1   [4, 11]      + |       gene1      enzyme
  [2]     chr1   [5, 12]      - |       gene2  structural
  [3]     chr1   [6, 13]      + |       gene3      enzyme
  -------
  seqinfo: 3 sequences (1 circular) from Mouse genome
```

Yeast dataset
========================================================
- Download the Saccharomyces cerevisiae GFF file.

```r
# Install rtracklayer package from `bioconductor.
biocLite("rtracklayer")

# Load the rtracklayer package
library(rtracklayer)

# Download yeast GFF file
https://downloads.yeastgenome.org/curation/chromosomal_feature/saccharomyces_cerevisiae.gff

# Read in the yeast GFF file as GRanges. 
yeast.gr <- readGFFAsGRanges("saccharomyces_cerevisiae.gff")
```

Exercise 7.3
========================================================
1. How many chromosomes are there in the yeast genome?
2. How many genes encode proteins?
3. How many genes are on the positive strand versus negative strand?
4. How many genes have introns?
5. What fraction of the genes are on the mitochondria?

Working with GRanges
========================================================

```r
dropSeqlevels(yeast.gr, c("I","II"))
keepSeqlevels(yeast.gr, "Mito")
gaps(yeast.gr)
```

Exercise 7.4
========================================================
1. Find the longest gene on chromosome II
2. Which chromosome has the most number of tRNA genes?
3. Do the same for protein coding, ribosomal RNAs, and pseudogenes.
4. Which chromosome has the biggest distance between any two genes (biggest intergenic region)?

Annotation Hub
========================================================

```r
biocLite("AnnotationHub")
library(AnnotationHub)

# Download the Annotation Hub database
ah <- AnnotationHub()

# Display the database
display(ah)

# Query the database
yeast_query <- query(ah, "Saccharomyces")
yeast_query

# Download the GTF file
yeast_cdna <- subset(yeast_query, title=="Saccharomyces_cerevisiae.EF4.74.gtf")[[1]]
```
