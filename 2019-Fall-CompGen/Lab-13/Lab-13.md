Lab 13
========================================================
author: Premal Shah
date: Oct 15, 2019
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

Biostrings
========================================================
incremental:true
class: small-code

```r
library(Biostrings)
dna.seq <- DNAString("ACGCTTA")
dna.seq
```

```
  7-letter "DNAString" instance
seq: ACGCTTA
```

```r
dna.set <- DNAStringSet(c("ACG","GGG","CTC"))
dna.set
```

```
  A DNAStringSet instance of length 3
    width seq
[1]     3 ACG
[2]     3 GGG
[3]     3 CTC
```

Working with FASTA file
========================================================
incremental:true
class: small-code
- Read in FASTA file

```r
yeast.fasta <- readDNAStringSet("yeast.fasta")
```
- Extract sequence corresponding to a GRanges object

```r
# Get the telomere sequence on one of the ends of chrI
yeast.gff <- readGFFAsGRanges("saccharomyces_cerevisiae.gff.txt")
telomere.seq <- yeast.fasta[yeast.gff[2]]
```

Working with Biostrings
========================================================
class: small-code

```r
width() # Get the lengths of each DNAString in a DNAStringSet
sort() # Sort the DNAStringSet by lengths/widths of DNAStrings
reverseComplement() # Find the DNA sequence of the opposite strand
translate() # Convert DNA sequence to amino acid sequence
codons() # Split a DNAString sequence into codons
alphabetFrequency() # Find out the frequency of individual nucleotides in a StringSet
letterFrequency() # Find out the frequency of multiple nucleotides in a StringSet
dinucleotideFrequency() # Find out the frequency of dinucleotides in a StringSet
oligonucleotideFrequency() # Find out the frequency of any N-mer in a StringSet
```

Work along exercise
========================================================
Create a DNAStringSet of CDS of all intron-less genes. Make sure all CDS start with a START codon and end with a STOP codon. 

Exercise 13.1
========================================================
1. Which chromosome has the highest GC content?
2. Which gene has the most arginine amino acids and which one has the highest proportion of arginine amino acids?
3. Lysine is encoded by AAA and AAG amino acids. Which gene has the highest proportion of AAG encoded lysines? Hint: read the help file of `oligonucleotideFrequency` carefully.

Subsetting Biostrings
========================================================
incremental:true
class: small-code

```r
subseq(DNAString/DNAStringSet, start = , end = , width = )
```

Pattern Matching
========================================================
incremental:true
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
incremental:true
class: small-code
- Find locations of patterns in Biostrings

```r
# For single DNAString/AAString
matchPattern(PATTERN, SUBJECT, MISMATCH ARGS)

# For DNAStringSet/AAStringSet
vmatchPattern(PATTERN, SUBJECT, MISMATCH ARGS)
```
- Use `data(HNF4alpha)`

Exercise 13.2
========================================================
How many coding sequences contain an AAA within a 10 bp region upstream of the start site? 
  - Create GFF of flanking regions.
  - Make sure to keep the strand information in mind.
  
