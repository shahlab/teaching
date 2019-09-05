Lab 02
========================================================
author: Premal Shah
date: Sep 05, 2019
autosize: true

Quick recap of variables
========================================================
incremental:true

```r
 # Assign values to variables
variable_x <- 14
variable_y <- 56

# Work with variables
variable_x + variable_y
```

```
[1] 70
```

```r
variable_x * variable_y
```

```
[1] 784
```

```r
# Save output to new variables
variable_z <- variable_x/variable_y

variable_z
```

```
[1] 0.25
```

Quick recap of variables
========================================================
incremental:true

```r
variable_t <- TRUE # Logical
variable_u <- 13 # Numeric
variable_v <- 10L # Integer
variable_w <- 3+4i # Complex numbers (we will ignore these for this course)
```
- Logical, Numeric and Integer classes/types are computable with each other
- TRUE statements have a value of 1, FALSE have value 0, NA have value NA

```r
variable_a <- "hello" # Character
```
- Characters are incompatible with Logical, Numeric or Integer classes

Simple data structures
========================================================
autosize: true
- **Vector** (one-dimension)

|   |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|1  |   |   |   |   |   |   |   |   |   |   |
- **Matrix** (two-dimensions)

|   |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|1  |   |   |   |   |   |   |   |   |   |   |
|2  |   |   |   |   |   |   |   |   |   |   |
|3  |   |   |   |   |   |   |   |   |   |   |
- **Arrays** can have more than 2 dimensions
- A **Vector** is a one dimensional **Matrix/Array**
- All elements of a **Vector/Matrix/Array** have to be of the same type/class

Functions
========================================================
<!-- incremental: true -->
- Functions are followed by parentheses

```r
# Function to create or combine elements 
c()

# Function to add values
sum()

# Function to plot
plot()
```

- Create simple vectors

```r
numeric_vector <- c(1, 2, 3, 4) # Vector of numbers
char_vector <- c("hello!", "this", "is", "a", "character", "vector")
```

Accessing elements of a Vector
========================================================
incremental:true

```r
vector_x <- c(11, 12, 13, 14) # Vector of numbers
vector_x[3]
```
- **3** is an _index_
- **[3]** is _referencing_ an index

Exercise 2.1 (Question, Code, Answer)
========================================================
1. Find the sum of first and last element of a vector.
2. Create two numeric vectors of length 3 and combine them into a third vector.
3. What happens when you combine a character vector with a numeric vector?
4. Create two numeric vectors of length 3. Create a new vector with ONLY the second elements of both vectors.
5. What happens when you _reference_ an index outside the length of a vector?
6. What happens when you _reference_ a negative index?
7. What happens when you add two numeric vectors of the same length?
8. What happens when you add two numeric vectors of the different lengths?

Subsetting a vector
========================================================
incremental:true
From a vector of 10 elements, create a new vector of only alternate elements.

```r
# Combine elements 41 through 50 and assign to variable vector_x
vector_x <- c(41, 42, 43, 44, 45, 46, 47, 48, 49, 50)
```

```r
# Method 1
vector_y <- c(vector_x[1], vector_x[3], vector_x[5], vector_x[7], vector_x[9]) 
```

```r
# Method 2
vector_z <- vector_x[c(1, 3, 5, 7, 9)]
```

```r
# Method 3
indices <- c(1, 3, 5, 7, 9)
vector_z <- vector_x[indices]
```

Sequence function
========================================================
incremental:true
- What if you have a really large vector of say 100 or even 1000 elements?

```r
seq(FROM, TO, INCREMENT)
```
### Exercise 2.2
1. Create a vector of numbers from 1 to 100.
2. Create a vector of only even numbers between 1 and 100.
3. From the vector of all numbers (1 to 100), create a new vector with only multiples of 5.
4. Create a vector of all multiples of 10 between 1 and 100 in DECREASING order?
5. What values are in the 3rd and 7th element of the above vector?
6. What happens when you `seq(10)`? 

Repeat function
========================================================
incremental:false
- How would you create a vector of 100 1s?

```r
rep(ELEMENT, TIMES/EACH)
```
### Exercise 2.3
Create the following vectors

|5  |5  |5  |5  |5  |5  |5  |5  |5  |5  |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|   |   |   |   |   |   |   |   |   |   |



|1  |2  |3  |4  |5  |1  |2  |3  |4  |5  |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|   |   |   |   |   |   |   |   |   |   |



|1  |1  |2  |2  |3  |3  |4  |4  |5  |5  |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|   |   |   |   |   |   |   |   |   |   |



|1  |1  |1  |1  |2  |2  |2  |3  |3  |4  |
|:--|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|   |   |   |   |   |   |   |   |   |   |

Creating and accessing elements of a matrix
========================================================
incremental:true
- **Vectors**

```r
vector_x <- c(11, 12, 13, 14) # Vector of numbers
vector_x[3]

# 3 is an index and [3] is referencing an index
```

- **Matrix** (two-dimensions)

```r
matrix(data = , nrow = INTEGER, ncol = INTEGER, byrow = LOGICAL)
```

```r
matrix(seq(1, 10, 1), nrow = 5, byrow = FALSE)
```

```
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
```

Accessing elements of a matrix
========================================================
incremental:true

```r
new_matrix <- matrix(seq(1, 10, 1), nrow = 5, byrow = FALSE)
new_matrix
```

```
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
```
- Accessing element "8"

```r
new_matrix[3, 2]
```

```
[1] 8
```
- Accessing 3rd row

```r
new_matrix[3, ]
```

```
[1] 3 8
```

Exercise 2.4
========================================================
1. Create the following matrix.

```
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    2    3    4    5
[2,]    6    7    8    9   10
[3,]   11   12   13   14   15
```
2. Save the 4th column as a new vector.
3. Create a new vector where each element is the sum of 2nd and 3rd row.
4. Subset a new 2x2 matrix from the above matrix with the following values

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
my_data[1:3,2]
```

```
[1] 100 200 300
```

```r
my_data[,3]
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

Exercise 2.5
========================================================
1. Read in the **data.tsv** file from didact and load it as a data frame.
2. Find the number of genes in the file using three different R commands.
3. Create a new data frame which contains only the first three columns of the old data frame.
4. What would the length of a genome be if it had only the genes in this file and no non-coding regions?
5. How many genes have uATGs in them?
6. How many genes have utrs?
7. Create a new data frame with only genes longer than 500 codons.

Help for functions discussed today
========================================================


```r
# Learn more about these functions by using the help function
help(seq) or ?seq

# Workout the examples at the bottom of the help sections
```

