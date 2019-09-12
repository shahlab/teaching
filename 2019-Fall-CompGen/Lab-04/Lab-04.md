Lab 04
========================================================
author: 
date: Sep 12, 2019
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

Exercise 4.1
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
summary(my_data$Length)
summary(my_data)
```

Exercise 4.2
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
[1] 5 3 8 7 1
```

```r
sample(vector_a, size = 15, replace = TRUE)
```

```
 [1]  5  7  2 10  9  6  4  1  7  2  1 10  1  5  1
```

```r
vector_prob <- 1:10
sample(vector_a, size = 15, replace = TRUE, prob = vector_prob)
```

```
 [1] 10 10 10 10  9  6  9 10  8  9  3  4  1  4  6
```

Exercise 4.2
========================================================
1. What happens when you sample more values than the number of elements from a vector with `replace=FALSE`?
2. Generate 1000 coin tosses from a fair coin. How would you tabulate the results?
3. Generate 1000 coin tosses from a biases coin where the likelihood of HEADS is twice that of TAILS.
4. Generate 1000 rolls of a biased dice with the following odds

|  1|  2|  3|  4|  5|  6|
|--:|--:|--:|--:|--:|--:|
|  3|  6|  5|  9|  2| 10|
