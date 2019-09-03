Lab 01
========================================================
author: 
date: 09/03/2019
autosize: true

Computational Genomics 16:761:505 & 01:447:303
========================================================
incremental: true

Introductions

- Dr. Premal Shah
- John Favate (TA)
- Survey

Course details
========================================================
incremental: true
- Class Periods: Tu,Th 1:40 - 4:40 pm
- TA office hours: by appointment, and in classroom

Course website(s)
========================================================
- Canvas :- Grades, e-mails
- GitHub :- Syllabus, course materials, homework
- Didact :- Computing resources, course materials, homework, quizzes
- DataCamp :- For graduate students*


Grading
========================================================
<!-- incremental: true -->
- Programming homeworks: 25% 
  - 10 pts. each, every class
- Quizzes: 25%
  - 10 pts. each, once in 4 classes, 1 hr, in class
- Final quiz: 25%
  - 25 questions, 4 pts each, 4 hrs, online
- Programmning project: 25%
  - Upto groups of 3

Final grades
========================================================
Grades will be calculated based on overall course performance.
The	following	grading	scale	will	be	used:			
 - 90% A			
 - 85%	B+			
 - 80%	B			
 - 75%	C+			
 - 70%	C
 
D	and	F	grades will	be determined based on the final score distribution	at the end of the	course.

Integrity
========================================================
It is very easy to cheat. DON'T

Basic guidelines
========================================================
incremental: true
- Don’t let the machines do updates during class.
- Turn machines and monitors off when you leave each day
- Filename convention - Shah\_lab01\_***.txt

Personal drives
========================================================
- Backup after every class
  - Flash drive
  - Dropbox/Google drive etc.

Download and configure R
========================================================
- Download R from [r-project.org](https://www.r-project.org/)
- Download RStudio from [rstudio.com](https://www.rstudio.com/products/rstudio/download/)

Where is everything in RStudio?
========================================================
- Files
- Console
- Help

Working with R Notebooks
========================================================


What can do you in R
========================================================
incremental: true
- [Movie explorer](https://shiny.rstudio.com/gallery/movie-explorer.html)
- [CDC data](https://gallery.shinyapps.io/CDCPlot/)
- [Riboviz](https://riboviz.org/GeneBased.html)
- This presentation
- [Other examples](https://shiny.rstudio.com/gallery/)

R
========================================================
R is a giant calculator

```r
2+2       # Simple addition
4*5*(7+9) # Complex calculation
sqrt(96)  # Square root of 96
exp(4)    # Exponentials e^4
log(10)   # log of 10 (base e)
log(10, base=10) # log of 10 (base 10)
```
remember 

PEMDAS: Parentheses, Exponents, Multiplication, Division, Addition, Subtraction

Variables in R
========================================================
incremental:true
- Assign values to variables

```r
variable_x <- 4 # Assign a value of 4 to variable 'x'
variable_y <- 5 # Assign a value of 5 to variable 'y'
```
- See value of variable

```r
variable_x
```

```
[1] 4
```
- Operate directly on variables

```r
variable_x + variable_y
```

```
[1] 9
```

Variables in R
========================================================
incremental:true
- Naming conventions
  - DO NOT start with a number (1xyz, 4abc, etc.)
  - Numbers after characters are OK (variable1, variable2, etc.)
  - Be descriptive. Use `tab` to autofill

```r
# This is OK
var_new
var_x

# This is not OK
varNew
kvxp1
```


Variables in R
========================================================
incremental:true
- Save output of operations to new variables

```r
variable_z <- variable_x + variable_y
variable_z
```

```
[1] 9
```

- Reassigning variables

```r
variable_x <- 17
variable_z
```

```
[1] 9
```


```r
variable_z <- variable_x + variable_y
variable_z
```

```
[1] 22
```

Logical statements (==, <=, >=, !)
========================================================
incremental:true

```r
variable_x == variable_y # Are these two variables equal
```

```
[1] FALSE
```

```r
variable_x != variable_y # Are they different
```

```
[1] TRUE
```

```r
variable_x <= variable_y # Is x less or equal to y
```

```
[1] FALSE
```

Complex logical statements (|, &)
========================================================
incremental:true

```r
(variable_x == variable_y) | (variable_x > variable_y) # Is x equal to y OR x greater than y
```

```
[1] TRUE
```

```r
(variable_x != variable_y) & (variable_x < variable_y) # Is x different from y AND x less than y
```

```
[1] FALSE
```

Exercise 1.1 (Question, Code, Answer)
========================================================
1. Create three variables and check if either of the first two variables are greater than the third.
2. Create three variables and check if the sum of the first two variables is greater than the third variable.
2. Create four variables and check if the product of the first two variables is the same as the product of the last two variables.

Types of variables
========================================================
incremental:true

```r
variable_u <- TRUE # Logical
variable_v <- 13 # Numeric
variable_w <- 10L # Integer
variable_x <- 3+4i # Complex numbers (we will ignore these for this course)
```
- Logical, Numeric and Integer classes/types are computable with each other
- TRUE statements have a value of 1, FALSE have value 0, NA have value NA

```r
variable_y <- "hello" # Character
```
- Characters are incompatible with Logical, Numeric or Integer classes

Exercise 1.2 (Question, Code, Answer)
========================================================
1. What results when you add `TRUE` variable with a numeric?
2. What results when you multiply `FALSE` with an integer?
3. What results when you add `NA` to numeric?
4. What is the difference in output (if any) between adding a numeric to a complex number and adding an integer to a complex number?
5. What is the difference when you add a numeric to a complex number versus multiplying a numeric to a complex number?


Homework in R Notebooks
========================================================
incremental: true
- Emails - Use Canvas' Inbox/email. NO direct emails will be answered. 
- Demo - Question, Code, Answer
- Use R notebooks for taking notes during class
- Commenting code
