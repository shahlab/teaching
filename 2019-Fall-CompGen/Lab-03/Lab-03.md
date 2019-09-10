Lab 03
========================================================
author: 
date: Sep 10, 2019
autosize: true

Data structures
========================================================
autosize: true
- **Vector** (one-dimension)

|   |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|1  |   |   |   |   |   |   |   |   |   |   |
- **Matrix** (two-dimensions)

|   |1  |2  |3  |4  |
|:--|:--|:--|:--|:--|
|1  |   |   |   |   |
|2  |   |   |   |   |
|3  |   |   |   |   |
- **Arrays** can have more than 2 dimensions
- A **Vector** is a one dimensional **Matrix/Array**
- <span style="color:red"> All elements of a **Vector/Matrix/Array** have to be of the same type/class </span>


Help for functions
========================================================


```r
# Learn more about these functions by using the help function
help(seq) or ?seq

# Workout the examples at the bottom of the help sections
```

Recap Exercise 2.4
========================================================
- 1. Create the following matrix.

```
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    2    3    4    5
[2,]    6    7    8    9   10
[3,]   11   12   13   14   15
```
- 2. Save the 4th column as a new vector.
- 3. Create a new vector where each element is the sum of 2nd and 3rd row.
- 4. Subset a new 2x2 matrix from the above matrix with the following values

```
     [,1] [,2]
[1,]    7    9
[2,]   12   14
```

Data structures
========================================================
incremental: true
- What if you wanted different _types_ of data in each column?

```
     Gene Length    mRNA  uATG    UTR_GC
1 YAL001C   1160   37.80 FALSE        NA
2 YAL002W   1274   22.17  TRUE 0.3529412
3 YAL003W    206 4621.93  TRUE 0.3636364
4 YAL007C    215  212.43  TRUE 0.3815789
5 YAL008W    198   49.96  TRUE 0.4081633
6 YAL009W    259   34.96  TRUE 0.3846154
```

- **Data frames**

```r
# Creating data frames
my_data <- data.frame(
    Gene = c("Gene1", "Gene2", "Gene3"),
    Length = c(100,200,300),
    Disease = c(TRUE, FALSE, FALSE),
    stringsAsFactors = FALSE
)
my_data
```

```
   Gene Length Disease
1 Gene1    100    TRUE
2 Gene2    200   FALSE
3 Gene3    300   FALSE
```

Accessing and subsetting data frames
========================================================
incremental:true
- Like a matrix

```r
my_data[1:3, 2]
```

```
[1] 100 200 300
```

```r
my_data[, 3]
```

```
[1]  TRUE FALSE FALSE
```
- Note: Like any **Matrix**, a **Data frame** can have only 2-dimensions
- Using column names

```r
my_data$Gene
```

```
[1] "Gene1" "Gene2" "Gene3"
```

```r
my_data$Length[2]
```

```
[1] 200
```

Some basic functions
========================================================

```r
# Find the length of a vector 
length()

# Number of dimensions of a matrix, array or data frame
dim()

# Number of rows or columns of matrix or data frame
nrow()
ncol()

# Structure of a data frame
str()

# Find data type
class()

# Convert and check type
as.character()
is.numeric()
```

Reading external files
========================================================
- Tab-separated (.tsv) or comma-separated (.csv) files can be read using

```r
data <- read.table("filename.tsv", header=TRUE, stringsAsFactors=FALSE)
```
- Files read using these commands will return a data frame 
- Make sure you are working in the right folder or provide a detailed path to the file

Exercise 3.1
========================================================
1. Read in the **data.tsv** file from didact and load it as a data frame.
2. Find the number of genes in the file using three different R commands.
3. Create a new data frame which contains only the first three columns of the old data frame.
4. What would the length of a genome be if it was made up only the genes listed in this file and no non-coding regions?

Vectorized operations
========================================================
incremental: true

```r
numeric_vector <- c(121, 21, 415, 85, 3, 65, 50, 11, 52)
```
- Find numbers greater than 50 

```r
numeric_vector > 50
```

```
[1]  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE
```
- Create a new vector with only numbers greater than 50

```r
positions_gt_50 <- numeric_vector > 50
numeric_vector[positions_gt_50]
```

```
[1] 121 415  85  65  52
```

```r
numeric_vector[numeric_vector > 50]
```

```
[1] 121 415  85  65  52
```


Locating and extracting values
========================================================
incremental:true

```r
# Find the location of specific values in a vector
numeric_vector == 65
```

```
[1] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
```
- Using `which()` function

```r
which(numeric_vector == 65)
```

```
[1] 6
```

```r
numeric_vector[which(numeric_vector == 65)]
```

```
[1] 65
```

```r
which(numeric_vector > 50 &  numeric_vector < 70)
```

```
[1] 6 9
```

```r
numeric_vector[which(numeric_vector > 50 & numeric_vector < 70)]
```

```
[1] 65 52
```

Locating and extracting values
========================================================
incremental:true
- To identify multiple specific values (21, 3, 11)

```r
numeric_vector
```

```
[1] 121  21 415  85   3  65  50  11  52
```

```r
numeric_vector == c(21, 3, 11)
```

```
[1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
```

```r
numeric_vector == 21 | numeric_vector == 3 | numeric_vector == 11
```

```
[1] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE
```

```r
which(numeric_vector == 21 | numeric_vector == 3 | numeric_vector == 11)
```

```
[1] 2 5 8
```

Locating and extracting values
========================================================
incremental:true
- Using `%in%` function

```r
numeric_vector
```

```
[1] 121  21 415  85   3  65  50  11  52
```

```r
# Find the location of specific values in a vector
numeric_vector %in% c(21, 3, 11)
```

```
[1] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE
```

```r
which(numeric_vector %in% c(21, 3, 11))
```

```
[1] 2 5 8
```

Exercise 3.2
========================================================
1. How many genes have uATGs in them?
2. How many genes have utrs?
3. Create a new data frame with only genes longer than 500 codons.
4. Where in the dataset are the following genes - YBL006C, YBL025W, and YAL025C?
5. What is the combined length of these 3 genes?


Exercise 3.3
========================================================
1. Where in the dataset are the first three genes without uATGs?
2. Where are the last three?
3. Which gene has length of at least 500 codons, utr of at least 75, gc content of at least 36% and mRNA abundance of at least 200?

Tabulate and summarize
========================================================
incremental:true

```r
# Tabulate values in a vector
table()
```


```r
char_vec <- c("a", "b", "b", "d", "d", "d")
table(char_vec)
```

```
char_vec
a b d 
1 2 3 
```


```r
# Summarize (extremely powerful)
summary()
summary(data$Length)
summary(data)
```

Exercise 3.4
========================================================
1. On which variable in our data frame will `table` be most useful?
2. What is the median RPF in our dataset?
3. What is the average mRNA value for genes with at most 400 codons?


Sample, sort and order
========================================================

```r
# Sample values in a vector
sample()
```

```r
# Sort values in a vector
sort()
```

```r
# Find the order of values in a vector
order()
```

