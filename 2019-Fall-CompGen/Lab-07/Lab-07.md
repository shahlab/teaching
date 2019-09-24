Lab 07
========================================================
author: 
date: Sep 24, 2019
autosize: true
<style>
.small-code pre code {
  font-size: 1em;
}
</style>

Big Data
========================================================
incremental:true

- Information is cheap or free
- Datasets are getting larger and more numerous by the day
- Consider the [Cancer Genome Atlas](https://portal.gdc.cancer.gov/exploration)
- Raw data is not always amenable to analysis, needs tidying

What is tidy data?
========================================================
incremental:true

- "All messy data is messy in its own way, but all tidy data is tidy in the same way"


```
  patient disease bmi sex age
1       a    TRUE  38   m  18
2       b    TRUE  35   f  27
3       c   FALSE  22   f  35
4       d    TRUE  24   m  24
```

- All columns are each column is a variable and each row is an observation
- Unified data structure = unified data analysis pipelines

Tidy data in R
========================================================
incremental:true

- [Tidyverse](https://www.tidyverse.org/): a set of R packages for data science
- It has a [helpful, free book](https://r4ds.had.co.nz/)
- Tidyverse cheatsheets, in Rstudio, Help > Cheatsheets > ...

```r
library(tidyverse)
```
- Package loading should occur in one code block at the top of a document
- Everyone, load tidyverse and the TCGA dataset, note the new function `read_csv`

```r
tcga <- read_csv("correct_file_path/tcga_stats.csv")
```

Tidyverse group_by() and tally()
========================================================
incremental:true

- Tidyverse functions are typically "intelligent", as long as you know what they do, they know what you want.
- group_by() groups a data frame by elements of a column, the effects are not easily visible
- tally counts things based on the groupings
- before we use them...

The pipe operator %>%
========================================================
incremental:true

- It is not the same as |
- shortcut is ctrl+shift+m or cmd+shift+m
- %>% passes the output of one function to the next


```r
tcga %>%
  group_by(gender) %>%
  tally() %>%
  ungroup()
```
- group tcga by gender, and count the number of times each unique element of the column occurs.
- Unlike table, this returns a data frame, makes further analysis easier.

The pipe operator %>%
========================================================
incremental:true

- Piping functions optionally make use of the data dot "."


Exercise 7.1
========================================================

1. How many entires occur for each project_id?
2. Each cancer affects a primary tissue. How many times does each "primary" site occur in the dataset?
3. How does the number of primary sites different among genders?
4. How would you find out the number of groups in the grouped data?

The arrange() function
========================================================
incremental:true

- arrange() reorders a data frame based on row values
- Takes one or more arguments for reordering, the column names
- desc(some_col_name) for descending order
- Argument order matters

```r
tcga %>%
  group_by(primary) %>%
  tally() %>%
  ungroup() %>%
  arrange(desc(n))
```

Exercise 7.2
========================================================

1. What is the cancer type with the most and least entires in the data?
2. Which cancer type has the most clinical files associated with it?

The filter() function
========================================================
incremental:true

- Sometimes big data problems are actually small data problems in disguise
- Tidyverse equivalent of

```r
df[df$var_1 == 10,]
```
- Retrieves rows based on certain conditions
- Easier to read than indexing, and computationally faster

The filter() function
========================================================

- Parenthesis and correct use of & and | are meaningful.

```r
# Males with colon cancer
tcga %>%
  filter(gender == "male" & primary == "Colon")

# All males cancers, and all colon cancers
tcga %>%
  filter(gender = "male" | primary = "Colon")
```

Exercise 7.3
========================================================

1. How many entries have no clincial files but do have transcriptome_profiling samples?
2. Find entries where you have a "male" with "Kidney" cancer, a "female" with "Stomach" cancer, or a "male" or "female" with "Bladder" cancer.
3. What is the third most common cancer affecting females?

The select() function
========================================================
incremental:true

- Tidyverse way to reduce columns of data frames

```r
# Pick columns you want by naming them
tcga %>%
  select(gender)

# Get rid of columns by adding a minus sign
tcga %>%
  select(-gender)

# Rearrange columns, everything() picks all other cols
tcga %>%
  select(gender, everything())

# Use sweeping statements to select many columns with ease
tcga %>%
  select_if(is.numeric)
```

The pull() function
========================================================
incremental:true

- pull() retrieves a column as a vector
- Tidyverse way to subsetting a column
- Easy to add to the end of a string of commands to get a vector as a result

```r
tcga %>%
  pull(gender)
```

The mutate() function
========================================================
incremental:true

- Generate new columns based on existing ones
- Arguments of new column name and way to calculate it
- Can do many at a time but order matters

```r
tcga %>%
  mutate(new.col = col.1 + col.2,
         test.col = ifelse(new.col > 5, TRUE, FALSE))
```

Exercise 7.4
========================================================

Answer these questions with a single chain of commands:  m

1. How many sequencing files (cols 7:12) are associated with each entry?
2. Add a TRUE/FALSE column to show whether gender is male or female.
3. How many entries are male or female and have at least 40 sequencing files associated with them?

The summarise() function
========================================================
incremental:true

- Or summarize()
- Custom summary functions compared to summary()
- Typically used with group_by()

```r
tcga %>%
  group_by(primary) %>%
  summarise(mean.trans.files.per.primary = mean(transcriptome_profiling, na.rm = TRUE))
```
- Generates a new column showing the mean number of files per each primary type

Exercise 7.5
========================================================

Answer these questions with one chain of commands:  

1. Combined, how many clinical and biospecimen files are associated with each primary cancer site, in a gender specfic manner?
2. Which cancer type has the most files for each gender?
