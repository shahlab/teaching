# Computational Genomics

* [Information](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#information)
* [Description](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#description)
* [Goals](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#goals)
* [Pre-requisites](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#pre-requisites)
* [Course Materials](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#course-materials)
* [Website and Communication](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#website-and-communication)
* [Course Activities](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#course-activities)
* [Grading Information](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#grading-information)
* [Academic Integrity](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#academic-integrity)
* [Student-Wellness Services](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen/README.md#student-wellness-services)

## Information

|							|						|
|-------------------|-------------------|
|**Semester**| Fall 2020|
|**Classroom**| Zoom Meeting (see below) |
|**Meeting Times**|	Tuesday/Thursday  1:40 - 4:10 pm|
|**Syllabus**| https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen|
|**Computing Resource**| [Amarel cluster](https://ondemand.hpc.rutgers.edu/)|
|**Course Instructor**| Premal Shah <br> premal.shah@rutgers.edu|
|**Office hours**| Zoom Meetings (See below) |
|**Primary Teaching Assistant**| Sukanya Das <br> sd882@gsbs.rutgers.edu|
|**Secondary Teaching Assistant**| John Favate <br> john.favate@rutgers.edu|


## Description

The main focus of this course is to learn R programming and apply it towards analysis of genomic datasets. In this course, we will focus on basics of programming, data wrangling, creating user-defined functions, and exploratory graphical data analysis. The primary data sets considered will contain genome sequences, genome annotations, RNA-seq and/or other expression data from multiple model organisms.

## Goals
The main objectives of this course are to enable students to learn:

 1. Basics of programming in R programming.
 2. Manipulation of tabular datasets. 
 3. Exploratory data analyses using visualization tools. 
 4. Working with genome sequences and genome annotation files.
 5. Basics of RNA-seq.
 6. Creating pipelines for trimming/mapping of RNA-seq datasets.
 7. Differential gene-expression analysis and identifying gene-ontology and pathway enrichments among gene-sets.
 8. Basics of statistical analyses of genomic datasets.

	### Core Curriculum Learning Goals
	Information Technology and Research [ITR] goals y and z:

	- y. Employ current technologies to access information, to conduct research, and to communicate findings.
	- z. Analyze and critically assess information from traditional and emergent technologies.

## Pre-requisites
1. **Undergraduates**:
	 - Gen Bio Lab 01:119:117 or 01:119:102  
	 - Genetics 01:447:380 or Genetic Analysis I 01:447:384
	 
2. **Graduate students**:
	While there are no pre-requisites for graduate students to join the class, they are STRONGLY encouraged to participate in the two-day [DataCarpentry workshop](http://www.datacarpentry.org/genomics-workshop/) that will be conducted during the winter break.

## Course Materials

All course materials can be downloaded from this [GitHub repo](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen) as well as the **Lectures** and **Homework** folders on the [Amarel](https://ondemand.hpc.rutgers.edu/) cluster. The **Quizzes** will be available solely on the [Amarel](https://ondemand.hpc.rutgers.edu/) cluster.

Class | Date | Topic | Learning Materials
:----- | ---: | :-- | :--
1 | Sep 1 | Introductions and setup |[Amarel instructions](Lab-01/Amarel_instructions.txt)
2 | Sep 3 | Variables | [In-class](Lab-02/Lab-02.Rmd) 
3 | Sep 10 | Variables and Vectors | [In-class](Lab-03/Lab-03.Rmd) <br> [Homework](Lab-03/Lab-03_homework.Rmd) 
4 | Sep 15 | Matrices and Dataframes | [In-class](Lab-04/Lab-04.Rmd) 
5 | Sep 17 | Quiz 01 | [Quiz](Lab-05/Lab-05_quiz.Rmd)
6 | Sep 22 | Conditional statements | [In-class](Lab-06/Lab-06.Rmd) <br> [Homework](Lab-06/Lab-06_homework.Rmd) 
7 | Sep 24 | Loops | [In-class](Lab-07/Lab-07.Rmd) 
8 | Sep 29 | Loops and functions | [In-class](Lab-08/Lab-08.Rmd) <br> [Homework](Lab-08/Lab-08_homework.Rmd) 
9 | Oct 1 | Lists and strings | [In-class](Lab-09/Lab-09.Rmd) 
10 | Oct 6 | Advanced data wrangling - tidyverse I | [In-class](Lab-10/Lab-10.Rmd) 
11 | Oct 8 | Advanced data wrangling - tidyverse II | [In-class](Lab-11/Lab-11.Rmd) <br> [Homework](Lab-11/Lab-11_homework.Rmd)
12 | Oct 13 | Data visualization - ggplot2 | [In-class](Lab-12/Lab-12.Rmd)
13 | Oct 15 | Quiz 02 and recap | [Quiz](Lab-13/Lab-13_quiz.Rmd)
14 | Oct 20 | Introduction to bioconductor - Rle and IRanges | [In-class](Lab-14/Lab-14.Rmd)
15 | Oct 22 | Working with genome annotations and sequences - GRanges + Biostrings | [In-class](Lab-15/Lab-15.Rmd)
16 | Oct 27 | Working with genome sequences - Biostrings  | [In-class](Lab-16/Lab-16.Rmd)
17 | Oct 29 | Quiz 03 and recap | [Quiz](Lab-17/Lab-17_quiz.Rmd)
18 | Nov 3 | Statistics I | [Introduction to Data in R](https://learn.datacamp.com/courses/introduction-to-data-in-r) <br> [Introduction to Statistics in R](https://learn.datacamp.com/courses/introduction-to-statistics-in-r)
19 | Nov 5 | Statistics II | [Correlation and Regression in R](https://learn.datacamp.com/courses/correlation-and-regression-in-r)
20 | Nov 10 | Class cancelled | 
21 | Nov 12 | Basics of RNA-seq | [In-class](Lab-21/Lab-21.Rmd)
22 | Nov 17 | Working with RNA-seq data I| 
23 | Nov 19 | Working with RNA-seq data II| 
24 | Nov 24 | Differential gene expression analyses |
25 | Dec 1 | Functional analyses of differentially expressed genes |
27 | Dec 3 | Shiny | 
28 | Dec 8 | Finals Group Project | 
29 | Dec 10 | Finals Group Project |

## Website and Communication

### Online classes
The class will be entirely online this semester. We will use [Zoom]( https://rutgers.zoom.us/j/99158883478) for online instructions. All meetings will also be recorded and made available on [YouTube](https://www.youtube.com/playlist?list=PLKfoJIuERmwqS4yTkC6RBMWsLxJwPRgRu).

### Website
This [GitHub repo](https://github.com/shahlab/teaching/tree/master/2020-Fall-CompGen) will serve as the course syllabus. Course materials and computing resources for this course will be available at [Amarel](https://ondemand.hpc.rutgers.edu/). Grades will be posted on [Canvas](https://rutgers.instructure.com/courses/66482).

**All students will need to sign up for Amarel accounts.** 
Please use this [link](https://docs.google.com/forms/d/1aeuvPrWYLdPQmaDT_wmLPFZVKnJKHNoFgWJE4Xw-r6o/viewform?edit_requested=true) to sign up.

### Communication
The primary mode of communication in this course (including major announcements) will be through [Canvas](https://rutgers.instructure.com/courses/66482).


### Emails  
Although the bulk of the communication will take place via [Canvas](https://rutgers.instructure.com/courses/66482), at times (rarely), we will send out important course information via email. This email is sent to your Rutgers email address. You are responsible for all information sent out to your University email account, and for checking this account on a regular basis.

### Virtual office hours
Virtual office hours will be held via Zoom by the two teaching assistant during the following hours. The instructor will hold office hours by prior appointment.

Tue 4:00 pm - 5:30 pm
Fri 4:00 pm - 5:30 pm
[Sukanya Das Zoom](https://rutgers-hipaa.zoom.us/j/91688172735)

Wed 4:00 pm - 5:30 pm
Thu 4:00 pm - 5:30 pm
[John Favate Zoom](https://rutgers-hipaa.zoom.us/j/91006054779)

## Course Activities

### In-class exercises
Each class will contain 2-4 modules. Each module will involve a ~15 min lecture followed by a programming exercise lasting ~20-30 min. Programming exercises will typically involve 2-5 questions. You will be asked to solve these questions on your own, which will involve applying the functions taught in the lecture part of the module. At the end of the individual exercise portion, I will go over the exercise as a group. Any piece of code written by me will be annotated and commented before being uploaded to the course website.   

### [DataCamp](https://www.datacamp.com/groups/education) for Students
All students taking this course will be assigned [DataCamp](https://www.datacamp.com/groups/education) modules every week. The modules will be parallel to the materials covered in the class. All students will be required to complete DataCamp modules by the assigned due date. 

Each module is worth 10 points.

<!--- The students will be required to submit their certificates of completion from DataCamp. --->

### Homeworks
In every lab, you will receive a homework assignment, typically a series of programming exercises that you must code based on the material you learn in class that day. You will upload solutions to these homework as a single R Notebook file before the beginning of the next lab. NO LATE SUBMISSIONS WILL BE ALLOWED. If you miss your due date for the homework, you will receive a 0 points for that assignment.

Each homework is worth 10 points.

### Quizzes
Quizzes will be conducted once every 4 classes. They will last 1-hr and be similar to in-class exercises. Quizzes will typically be "open-book", i.e., you will be able to refer to your class notes, presentations, and my codes. 

Each Quiz is worth 10 points.

### Final projects
Towards the end of the course, all students will be split into teams of 2-3 individuals. Each team will complete a finals research project. Each team can select one of the two broad research topics listed below:

1. **Comparative genomic analyses**:
	This project will involve downloading genome sequences and annotations of 2 or more organisms and performing various sequence level analyses.
	 
2. **RNA-seq analyses**:
	This project will involve downloading raw sequencing datasets from GEO database and identification of differentially expressed genes and their functional characterization.

Detailed instructions for the finals projects will be given 4 weeks prior to the last class.

## Grading Information
Activity | Percentage
:----- | ---------:
DataCamp modules | 20%
Programming homeworks | 30%
Quizzes | 30%
Final project | 20%

### Grading Scale
Grade | Percentage
:---- | ---------:
A | ≥ 90%
B+ | ≥ 85%
B | ≥ 80%
C+ | ≥ 75%
C | ≥ 70%
D+ | ≥ 65%
D | ≥ 60%
F | < 60%

**Note:** Grades will not be curved. Your grade will be based on your own effort and progress, and not based on competition with your classmates.

**Note for graduate students:** A grade of **D+** or below will automatically be marked as an **F**.

## Academic Integrity
 
We encourage you to interact with other students while doing assignments in class, and in some cases, may be required to work with one another. However, any assignments or homeworks you turn in for grading must represent your own work – it may not be copied from another person’s work. Never use a piece of code unless you know the exactly how it works. If we suspect plagiarism, we will ask you to come in and explain your answers or writing.

The official Rutgers policy on cheating can be found [here](http://academicintegrity.rutgers.edu/academic-integrity-at-rutgers/).

There are at least 5 categories of violations: cheating, fabrication, plagiarism, denying others access to information or material, and facilitating Violations of Academic Integrity.  Students who violate the Rutgers Integrity policies will be reported to the Office of Student Conduct.  Sanctions will be determined by the Office of Student Conduct according to the procedures described in the University Policy on Academic Integrity.

## Student-Wellness Services

**Just in Case Web App**

The web app can be found [here](http://www.justincaseforcolleges.com/). It provides access to helpful mental health information and resources for yourself or a friend in a mental health crisis on your smartphone or tablet and easily contact CAPS or RUPD.

**Counseling, ADAP & Psychiatric Services (CAPS)**

https://health.rutgers.edu/

CAPS is a University mental health support service that includes counseling, alcohol and other drug assistance, and psychiatric services staffed by a team of professional within Rutgers Health services to support students’ efforts to succeed at Rutgers University. CAPS offer a variety of services that include: individual therapy, group therapy and workshops, crisis intervention, referral to specialists in the community and consultation and collaboration with campus partners.

**Violence Prevention & Victim Assistance (VPVA)**

https://vpva.rutgers.edu

(848) 932-1181

The Office for Violence Prevention and Victim Assistance provides confidential crisis intervention, counseling and advocacy for victims of sexual and relationship violence and stalking to students, staff and faculty.  To reach staff during office hours when the university is open or to reach an advocate after hours, call 848-932-1181.

**Disability Services**

https://ods.rutgers.edu/

The Office of Disability Services works with students with a documented disability to determine the eligibility of reasonable accommodations, facilitates and coordinates those accommodations when applicable, and lastly engages with the Rutgers community at large to provide and connect students to appropriate resources.

**Scarlet Listeners**

https://rutgers.campuslabs.com/engage/organization/scarletlisteners

(732) 214-9069

Scarlet Listeners – get things off your chest in a non-judgmental, empathetic space facilitated by trained students. Sessions are held Monday-Thursday evenings during the Fall and Spring semesters.

Sign up for information about times and locations at tinyurl.com/SLGroupSessions or email scarlet.listeners@gmail.com
