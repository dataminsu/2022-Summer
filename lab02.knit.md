---
title: "Lab 2: Exploration by visualization: the streaming movies dataset"
author: "Minsu Kang and Minsung Kim"
date: "2022-06-30"
documentclass: article
geometry: margin=1in
fontsize: 11pt
output:
  pdf_document:
    highlight: tango
    toc: false
    df_print: kable
    fig_caption: no
    number_sections: no
    dev: pdf
---



* * *

## Visualization by example

### Exercise 1

```r
View(streaming)
qplot(x=im_db, binwidth=0.5, data=streaming)
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-1-1} \end{center}
* Question1
    The View function shows whole data on Console window. The histogram with qplot function showed in plots window. The histogram shows the shape of distribution and density of im_db.

### Exercise 2

```r
qplot(x=im_db, binwidth=0.5, fill=main_language, data=streaming)
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-2-1} \end{center}

* Question1
    It fill out the bar graph with color.

* Question2
    Most of movies made by english.

### Exercise 3
* Question1
    English and Foreign IMDB shows left-skewed distribution, and centered around 6 to 8. The average between English and Foregin film have a substantial difference.

* Question2
    Yes. It is hard to foray into American movie market as a Foreign film. So, only who has perfect stories, or great creativity foreign films can success and can be created by IMDB. So only the famous one can translated and rated. Plus, for the translating, it costs more than English movie. However, English movies have low obstacles to entry and rated, and even it is small films it is easy to rated. So the quality of movie is not guaranteed.

### Exercise 4

```r
qplot(
  x = im_db, 
  binwidth = 0.5, 
  facets = ~ age,
  data = streaming)
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-3-1} \end{center}
* Question1
    There are 5 facets.

* Question2
    The facets represent IMDB rating depends on age(film rating).

* Question3
    R rated movie distribution facet contains most movies.
    
### Exercise 5

```r
qplot(x=rotten_tomatoes, y=im_db, data=streaming)
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-4-1} \end{center}
* Question 1
    When Rotten_tomatoes going up, The IMDB also rated high(positive, linear relationship).

### Exercise 6

```r
qplot(x=rotten_tomatoes, y=im_db, data=streaming, color=main_language)
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-5-1} \end{center}
* Question 1
    English movie scattered all over the rates, but Foreign films dense in right, upper quadrant.
    
### Exercise 7

```r
qplot(x=rotten_tomatoes, y=im_db, data=streaming, facets= ~age)
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-6-1} \end{center}
* Question 1
    It shows same data, but divided by ages(film ratings).

### Exercise 8

```r
qplot(
  x = rotten_tomatoes, 
  y = im_db, 
  geom = "smooth", 
  method = "lm", 
  data = streaming
  )
```

```
## `geom_smooth()` using formula 'y ~ x'
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-7-1} \end{center}
* Question 1
    It follows same linear trends.

### Exercise 9

```r
qplot(
  x = rotten_tomatoes, 
  y = im_db, 
  geom = c("smooth","point"), 
  method = "lm", 
  data = streaming
  )
```

```
## Warning: Ignoring unknown parameters: method
```

```
## `geom_smooth()` using formula 'y ~ x'
```



\begin{center}\includegraphics[width=0.8\linewidth]{lab02_files/figure-latex/unnamed-chunk-8-1} \end{center}

