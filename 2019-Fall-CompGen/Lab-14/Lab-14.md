Lab 14
========================================================
author: Premal Shah
date: Oct 17, 2019
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

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

Exercise 14.1
========================================================
1. Which chromosome has the highest GC content?
2. Which gene has the most arginine amino acids and which one has the highest proportion of arginine amino acids?
3. Lysine is encoded by AAA and AAG amino acids. Which gene has the highest proportion of AAG encoded lysines? Hint: read the help file of `oligonucleotideFrequency` carefully.


apply functions
========================================================

```r
# Applies a function to each row or column of a matrix/dataframe
# Returns a vector (usually)
apply(MATRIX/DATAFRAME, MARGIN = 1/2,  FUNCTION) 

# Applies a function to each element of a vector or list. 
# Returns a list
lapply(LIST/VECTOR, FUNCTION) 

# Applies a function to each element of a vector or list. 
# Returns a vector/dataframe/list
sapply(LIST/VECTOR, FUNCTION) 
```

Examples of apply
========================================================
1. Create a 10 x 10 matrix of number and calculate mean and standard deviation of values in rows and columns.
2. Create a list of 10 elements where each element is a vector of numbers from 1 to N.
3. Divide each element of the previous list by the mean value of that element.


