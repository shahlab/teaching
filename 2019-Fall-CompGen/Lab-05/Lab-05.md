Lab 05
========================================================
author: 
date: Sep 17, 2019
autosize: yes
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

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
summary(my_data$Length)
summary(my_data)
```

Exercise 5.1
========================================================
1. On which variable in our data frame will `table` be most useful?
2. What is the median RPF in our dataset?
3. What is the average mRNA value for genes with at most 400 codons?

Sample
========================================================
incremental:true
class: small-code

```r
# Sample values in a vector
sample(WHAT,HOW_MANY,replace =, prob = )
```

```r
vector_a <- 1:10
sample(vector_a, size = 5, replace = FALSE)
```

```
[1]  9  5 10  4  6
```

```r
sample(vector_a, size = 15, replace = TRUE)
```

```
 [1]  7  5  3  6  6  4  4  6  6  8  7 10  1  3  2
```

```r
vector_prob <- 1:10
sample(vector_a, size = 15, replace = TRUE, prob = vector_prob)
```

```
 [1]  9  9 10  9 10 10  1  5  8  9 10  5  7 10  8
```

Exercise 5.2
========================================================
1. What happens when you sample more values than the number of elements from a vector with `replace=FALSE`?
2. Generate 1000 coin tosses from a fair coin and tabulate the results?
3. Generate 1000 coin tosses from a biased coin where the likelihood of HEADS is twice that of TAILS.
4. Generate 1000 rolls of a biased die with the following odds

|  1|  2|  3|  4|  5|  6|
|--:|--:|--:|--:|--:|--:|
|  2|  4| 10|  6|  7|  3|

Conditional statements
========================================================
incremental:true
class: small-code
- if, else statement

```r
if(CONDITION){
    Do operation 1
    Do operation 2
}else{
    Do operation 3
    Do operation 4
}
```

```r
var_a <- 1
if(var_a == 2){
    print("Variable 'a' has a value of 2")
}else{
    print("Variable 'a' has a value other than 2")
}
```

```
[1] "Variable 'a' has a value other than 2"
```

Conditional statements
========================================================
incremental:true
class: small-code
- `ifelse` for multiple checks

```r
ifelse(CONDITION, TRUE_statements, FALSE_statements)
```

```r
var_a <- 1:10
ifelse(var_a > 5, 1, 0)
```

```
 [1] 0 0 0 0 0 1 1 1 1 1
```


Exercise 5.3
========================================================
Read in `homework_data.tsv` file from Lab 03 

1. Check if 1246th gene in the dataset has more than 500 mRNA and is atleast 300 codons long.
2. For all genes that are more than 400 codons long, print "LONG", otherwise print "SHORT". Tabulate your results.
3. How would you add/append this above result to the original dataset?

Loops
========================================================
incremental:true
class: small-code
- `for` loops

```r
for(VARIABLE in VALUES){
    Do something 1
    Do something 2
}
```

```r
# Count the number of values greater than 2
var_a <- 1:4
counter <- 0
for(var_i in var_a){
    print(var_i)
    if(var_i>2){
        counter <- counter+1
    }
}
```

```
[1] 1
[1] 2
[1] 3
[1] 4
```

```r
counter
```

```
[1] 2
```

Exercise 5.4
========================================================
1. Count the number of 4s in sample of 1000 unbiased die rolls using `for` loops.
2. Using `for` loops, create a new vector of differences between RPF and mRNA values of genes such that there are only positive values in this vector. Save this vector in the data frame.
3. Repeat question 2, without using `for` loops.
