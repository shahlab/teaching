Lab 06
========================================================
author: 
date: Sep 19, 2019
autosize: yes
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

Loops (indefinite)
========================================================
incremental:true
class: small-code
- `while` loops

```r
while(TRUE){
    Do something 1 
    Do something 2
}
```

```r
var_a <- 1
while(var_a<3){
    print(c("Variable 'a' is still less than 3", var_a))
    var_a <- var_a + 1
}
```

```
[1] "Variable 'a' is still less than 3" "1"                                
[1] "Variable 'a' is still less than 3" "2"                                
```
- Be very careful of infinite loops

```r
var_a <- 1
while(var_a < 10){
    print("Oops! this got out of hand pretty fast.")
}
```

Exercise 6.1
========================================================
- 1. Keep rolling an unbiased dice until you see a 6. How many dice rolls did it take?
- 2. Repeat the same process for a biased dice with the following odds.

|  1|  2|  3|  4|  5|  6|
|--:|--:|--:|--:|--:|--:|
| 10|  9|  8|  7|  6|  5|
- 3. Repeat the above process until you see a 6 or you have rolled the dice 10 times, whichever comes first.

Functions
========================================================
incremental:true
class: small-code

```r
my_function <- function(INPUT){
    x <- Do something 1
    y <- DO something 2
    OUTPUT <- x + y
    return(OUTPUT)
}
```

```r
mean_func <- function(x){
    sum_var <- 0
    for(i in x){
        sum_var <- sum_var + i
    }
    mean_var <- sum_var/length(x)
    return(mean_var)
}
```

```r
mean_func(1:10)
```

```
[1] 5.5
```

Exercise 6.2
========================================================
1. Write a function to calculate factorial of a value.
2. Write a function to calculate the fibonacci series up to n elements.

Lists
========================================================
incremental:true
class: small-code
- **Data frames**

```
   Gene Length Disease
1 Gene1    100    TRUE
2 Gene2    200   FALSE
3 Gene3    300   FALSE
```
- **Lists**

```r
my_list <- list(
    a = 1:5,
    b = c("Gene1", "Gene2"),
    mat = matrix(1:4, nrow = 2)
)
my_list
```

```
$a
[1] 1 2 3 4 5

$b
[1] "Gene1" "Gene2"

$mat
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```

Accessing and subsetting Lists
========================================================
incremental:true
class: small-code

```r
my_list
```

```
$a
[1] 1 2 3 4 5

$b
[1] "Gene1" "Gene2"

$mat
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```
- Like a data frame

```r
my_list$b
my_list$mat[1,]
```
Accessing and subsetting Lists
========================================================
incremental:true
class: small-code
- Using indices

```r
my_list[[2]]
```

```
[1] "Gene1" "Gene2"
```

```r
my_list[["mat"]]
```

```
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```

Exercise 6.3
========================================================
1. Create a list with the following elements - numeric vector, matrix, data frame.
2. Add a character vector to the above list without recreating the entire list.
3. Create a list of two lists. How would you access elements in this data structure?

Strings
========================================================
incremental: true
class: small-code
Functions to work with character strings

```r
char_vec <- c("YAL001C", "YAL03AWA", "YFL010C", "YPR158W")
```

```r
# Find length of a character string
nchar()
```

```r
# Subset a string
substr(CHAR_VECTOR, START, STOP)
```

```r
substr(char_vec, start = 3, stop = 4)
```

```
[1] "L0" "L0" "L0" "R1"
```

```r
substr(char_vec, start = 1:4, stop = 2:5)
```

```
[1] "YA" "AL" "L0" "15"
```

Strings
========================================================
incremental: true
class: small-code
Functions to work with character strings

```r
# Split a string
strsplit(CHAR_VECTOR, SPLIT_BY)
```

```r
strsplit(char_vec, split = "Y")
```

```
[[1]]
[1] ""       "AL001C"

[[2]]
[1] ""        "AL03AWA"

[[3]]
[1] ""       "FL010C"

[[4]]
[1] ""       "PR158W"
```

```r
strsplit(char_vec, split = "A")
```

```
[[1]]
[1] "Y"     "L001C"

[[2]]
[1] "Y"   "L03" "W"  

[[3]]
[1] "YFL010C"

[[4]]
[1] "YPR158W"
```

Strings
========================================================
incremental: true
class: small-code

```r
strsplit(char_vec, split = "")
```

```
[[1]]
[1] "Y" "A" "L" "0" "0" "1" "C"

[[2]]
[1] "Y" "A" "L" "0" "3" "A" "W" "A"

[[3]]
[1] "Y" "F" "L" "0" "1" "0" "C"

[[4]]
[1] "Y" "P" "R" "1" "5" "8" "W"
```

Strings
========================================================
incremental: true
class: small-code
Functions to work with character strings

```r
# Paste - very versatile
paste(, SEPARATE_BY, COLLAPSE_BY)
```

```r
paste("hello", "there", sep = "-")
```

```
[1] "hello-there"
```

```r
paste(c("A", "B", "C"), c(1, 2, 3),sep = "-")
```

```
[1] "A-1" "B-2" "C-3"
```

```r
paste(c("A", "B", "C"), c(1, 2, 3),sep = "-", collapse="?")
```

```
[1] "A-1?B-2?C-3"
```

Exercise 6.4
========================================================
1. Extract the first three leters from each element of the character vector above.
2. Extract the last three leters from each element of the character vector above.
3. After splitting `char_vec` by "A", extract the first element belonging to the gene "YAL03AWA".
4. How would you create a *vector* of the following elements A1,A2,A3,B1,B2,B3,C1,C2,C3,D1,D2,D3?
5. How would you create the following *element* "A1+A2+A3+B1+B2+B3+C1+C2+C3+D1+D2+D3"?

