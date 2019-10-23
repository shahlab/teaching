Lab 15
========================================================
author: Premal Shah
date: Oct 22, 2019
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

Pattern Matching
========================================================
class: small-code
- Count the number of times a pattern is found in Biostrings

```r
# For single DNAString/AAString
countPattern(PATTERN, SUBJECT, MISMATCH ARGS)

# For DNAStringSet/AAStringSet
vcountPattern(PATTERN, SUBJECT, MISMATCH ARGS)
```
- Use `data(HNF4alpha)`

Pattern Matching
========================================================
class: small-code
- Find locations of patterns in Biostrings

```r
# For single DNAString/AAString
matchPattern(PATTERN, SUBJECT, MISMATCH ARGS)

# For DNAStringSet/AAStringSet
vmatchPattern(PATTERN, SUBJECT, MISMATCH ARGS)
```
- Use `data(HNF4alpha)`

Exercise 15.1
========================================================
How many coding sequences contain an AAA within a 10 bp region upstream of the start site? 
  - Create GFF of flanking regions.
  - Make sure to keep the strand information in mind.
  
Consensus matrices and sequence logos
========================================================

https://en.wikipedia.org/wiki/Sequence_logo#/media/File:KozakConsensus.jpg









```
Error in library(ggseqlogo) : there is no package called 'ggseqlogo'
```
