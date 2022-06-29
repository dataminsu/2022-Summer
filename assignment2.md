# Assignment 2: Visualization by example

## Instructions

Obtain the GitHub repository you will use to complete the assignment, which contains a starter file named `visualization_by_example.Rmd`.
This assignment will help you become more familiar with creating visualizations using R by guiding you through a few simple examples.
Read the [About the dataset](#about-the-dataset) section to get some background information on the dataset that you'll be working with.
Each of the below [exercises](#exercises) are to be completed in the provided spaces within your starter file `visualization_by_example.Rmd`.

When you're ready to submit, follow the directions in the **[How to submit](#how-to-submit)** section below.

## About the dataset

In this assignment we will be working with a dataset of penguin measurements. These observations were measured from 344 penguins at Palmer Station in Antarctica. 

The dataset contains 344 rows, each of which represents one of the 344 penguins. There are 8 columns, each of which represents a variable measured on the penguins, such as their species or their flipper length.

## Exercises

Start working on these exercises **after** you have successfully cloned your repository into RStudio Server.

Remember use to proper grammar, punctuation, etc. when answering the exercises, as well as full sentences where appropriate.

And don't forget to change your name in the header section at the top of the `Rmd` file!

1. You should always inspect a new dataset to become more familiar with what it contains. To do this in RStudio, first run the setup code chunk that is included in your `visualization_by_example.Rmd` file.

    Then type the following command **in your *Console* window** (not in the R Markdown file):

    ```r
    View(penguins)
    ```
    
    (If you get an error message that says `object penguins not found` then you have not run the setup code chunk.)

    Inspect the table that comes up and use it to answer the following questions (remember to write your answers in the `visualization_by_example.Rmd` file in the space provided for Exercise 1).

    i.  How many rows and columns does this dataset have?
    
    ii.  What does a row in this dataset represent (i.e. what is the unit of observation)?
    
    iii. What are three categorical variables in the `penguins` dataset?
    
    iv. What are four continuous variables in the `penguins` dataset?
    
    v. Which variable in the `penguins` dataset could be treated as either continuous or categorical, depending on the context in which it is used?
    
    vi.  What are the three species of penguin in the dataset?
    
    > #### Creating list with Roman numerals in RMarkdown
    >
    > If you wish to create a list of items that are numbered with Roman numerals (e.g. `i.`, `ii.` etc.) then you can do so by writing these numerals at the start of the line:
    >
    > ```
    > i. This is the first item.
    >
    > ii. This is the second item.
    > ```
    
    As we learned in Assignment 1, it is a good idea to commit your work frequently (i.e. make a "checkpoint" with Git). In this assignment we will commit our work after exercise.
    
    **Once you have finished writing your answers to this exercise in the `visualization_by_example.Rmd`:**
    
    * Save the `visualization_by_example.Rmd` file in RStudio, and then commit those changes. If you need a refresher, you can find [instructions on how to do so in the supplementary textbook](https://book.cds101.com/how-to-stage-commit-and-push-to-github-using-rstudio-server.html). 
    
    * When making the commit, write a *commit message* that summarizes the work that you completed. Examples of good messages might be: "Completed Exercise 1" or "Answered Ex. 1 questions about the dataset".
    
    You do not need to push to GitHub at this stage (i.e. Steps 4-6 of the instructions linked above), although you can do so if you wish.

2. In the Exercise 2 section of your starter file `visualization_by_example.Rmd`, create an R code block by typing:

        ```{r}
        
        ```

    You will **always** need to create an R code block by typing the above if you want to execute code in your R Markdown file. Then, type the following code inside the R code block, like so:
    
        ```{r}
        qplot(x = flipper_length_mm, data = penguins)
        ```
    Run the code by either clicking the green "play" button in the upper right corner of the code chunk or, with your cursor still in the block, by pressing <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Enter</kbd>.
    This should create a plot called a histogram.
    
    Answer the following questions about your plot:
    
    i. Which axis of the plot has the flipper length variable been plotted on?
    
    ii. What do the numbers on the other axis of the graph represent?
    
    iii. What is the modality of the distribution of flipper lengths?
    
    Once you have finished this exercise, commit save the file, and make another commit. A good commit message might be "Finished Exercise 2" or "Created and interpreted exercise 2 histogram".

    > #### Important!
    > The backticks for creating the R code block **are assumed to be present in all subsequent examples.**
    >
    > So if you see this:
    > 
    > ```r
    > 1 + 1
    > ```
    >
    > You should type **this** in your R Markdown file:
    >
    >     ```{r}
    >     1 + 1
    >     ```
    >
    > If you find that typing out lots of backticks is a nuisance, then you can either use a keyboard shortcut to insert an R code chunk (Windows: Ctrl+Alt+I, Mac: Cmd+Option+I), or you can click on the green "Insert" button at the top of the file editor pane and select the "R" option.

3. We often need to modify the default number of bins in a histogram. We can do this by passing an extra parameter to the `qplot()` function. We can either use the `bins` parameter to set the number of bins, or set the `binwidth` parameter to a particular width for the bins. If neither parameter is supplied, then `qplot()` will default to 30 bins, as we had in the previous exercise.

    The histogram in the last exercise was a little jagged. For example, there are two peaks in the distribution, but their shape is obscured by noise in the data. We can *smooth* the distribution by plotting fewer (wider) bins.

    i. Let's start by setting the number of bins. Use the code snippet from exercise 2 as a starting point. Copy it to a new code chunk in the Exercise 3 answer section, and add `bins = 15` to the list of arguments passed to the `qplot(...)` function.
  
      Your code should be something like this:
      
      ```
      qplot(x = flipper_length_mm, bins = 15, data = penguins)
      ```
    
      Does the distribution in this histogram look more or less noisy than the histogram you had created in exercise 2?
    
    ii. Create another new code chunk in your answer file, and add the histgram code from part (i) of this exercise. Then **change** the `bins=15` parameter to `binwidth=1`.
  
      Are there more or less bins in this new histogram? Does that increase or decrease the smoothness of the distribution? Does that make the pattern of two peaks easier or harder to spot in this histogram?
    
    Once you have finished this exercise, commit your work again with a suitable commit message.
  
    After making this commit, let's also push our work to GitHub by clicking the green upwards arrow in the Git pane (top right of RStudio).
  
    Finally go to the GitHub repository that you created for Assignment 2 and check that all three of your commits have successfully been pushed to GitHub. (If you refresh the GitHub repository webpage you should notice the most recently pushed commit shows up as well as the total number of commits.)
    
    > #### How often should you push to GitHub?
    >
    > We can push after every commit, or after several commits - how often you do so does not matter for the purposes of this class.
    >
    > "Pushing" is the process of syncing the history of checkpoints between your local copy of the project (in RStudio) and the remote copy of the project (on GitHub). By pushing your commits, you back up your work and allow collaborators to download ("Pull") your edits into their own local copy of the project (and, for the purposes of this class, you allow us to see and grade your assignment!).

4. Create a scatter plot by adding this code to a new code chunk in the *Exercise 4* section of your answer file:

    ```
    qplot(x = flipper_length_mm, y = body_mass_g, data = penguins)
    ```

    Run the code block and look at the output. Then answer the following questions:
    
    i. What variable is on the y-axis of this scatter plot?
    
    ii. Is there a relationship between these two variables, and if so, is it linear or non-linear?

    When you have completed this exercise, make another commit.

5. In the *Exercise 5* section of your answer file, create a new code chunk with another scatter plot, but this time plot the `bill_length_mm` variable on the x-axis. (You can start with your code from Exercise 4, and modify the `x = ...` argument.)

    The relationship in this graph is linear, because there is no obvious curvature in the data. Does the correlation between bill length and body mass in this scatter plot look stronger or weaker than the correlation of the two variables in your previous scatter plot from Exercise 4?
    
    Commit your work.

6. Let's investigate what could be causing the spread in correlation between bill length and body mass in the previous exercise. (After all, we might expect that bigger penguins have longer bills.)

    When we have categorical variables, we can break down our plot into different parts depending on the value of that categorical variable.
  
    As an example, copy your code from Exercise 5, and add an extra parameter: `color = species`. Your code should look like this:

    ```r
    qplot(
      x = bill_length_mm, 
      y = body_mass_g,
      color = species,
      data = penguins
      )
    ```
    
    Note that we have wrapped our function over multiple lines here (1) to make it easier to read when there are lots of arguments, ad (2) to prevent it from overruning the right margin of the page after you knit to a PDF. Note that we indent the wrapped lines by 2 spaces to indicate that they are really part of the previous line of code.

    How does coloring the data points by the species of penguin make the relationship between bill length and body mass easier to understand? (I.e. what pattern can you see in this graph that was not evident in the uncolored scatter plot from the previous exercise?)
      
    Commit your work and push to GitHub again. If you have made a commit at the end of each exercise, you should see at least 7 commits. If you made extra commits (e.g. correcting one of your answers) then you may have even more commits (it's better to have more commits than fewer).

## How to submit

To submit your assignment, follow the two steps below.
Your work will be graded for credit **after** you've completed both steps!

1.  If you have any uncommitted work: save, commit, and push your completed R Markdown file so that everything is synchronized to GitHub. 
    If you do this right, then you will be able to view your completed file on the GitHub website.

2.  Knit your R Markdown document to the PDF format, *proof-read the PDF*, export (download) the PDF file from RStudio Server, and then upload it to *Assignment 2* posting on Blackboard.

## Cheatsheets

You are encouraged to review and keep the following cheatsheets handy while working on this assignment:

*   [ggplot2 cheatsheet][ggplot2-cheatsheet]

*   [RStudio cheatsheet][rstudio-cheatsheet]

*   [RMarkdown cheatsheet][rmarkdown-cheatsheet]

*   [RMarkdown reference][rmarkdown-reference]

[ggplot2-cheatsheet]:   https://gmuedu-my.sharepoint.com/:b:/g/personal/dwhite34_gmu_edu/ESLxplzb1sdLszfqs3208G0BdScfSbNqrikzJ1pIKczsFw?e=cwYcjM
[rstudio-cheatsheet]:   https://gmuedu-my.sharepoint.com/:b:/g/personal/dwhite34_gmu_edu/EVAQYYLorhxPh49NdlZV4KgBNNBQHRdJNthHK0ZuID8_Gw?e=dfzJPt
[rmarkdown-reference]:  https://gmuedu-my.sharepoint.com/:b:/g/personal/dwhite34_gmu_edu/Ed4VQ0-6mEhBp2IkjIdGDK0BwaR9BDzEnpnVyyxDn_gasg?e=1eLHsa
[rmarkdown-cheatsheet]: https://gmuedu-my.sharepoint.com/:b:/g/personal/dwhite34_gmu_edu/ETKKUWqePhRJv-VvAOsg4F4BPte7yKfQJKyyr1gNMg46yQ?e=hJPHXV
