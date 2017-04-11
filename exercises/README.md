

# Exercises

## Exercises 1: Preliminaries

The goal of [Exercises 1](exercises01-SDS383D.pdf) is to provide you with a review of two basic ideas:  
- Bayesian updating in simple conjugate families  
- frequentist approaches to uncertainty quantification  

It will also treat the multivariate normal distribution in (possibly excruciating) depth.  But since this distribution is so fundamental to working with hierarchical Bayesian models, it's worth the effort.  

## Exercises 2: Bayes and the Gaussian linear model  

The goal of [Exercises 2](exercises02-SDS383D.pdf) is to get you comfortable with the use of conjugate priors in Gaussian models.  It finishes with a cool use of hierarchical modeling to fit a regression model with heavy-tailed errors.  

## Exercises 3: Linear smoothing and Gaussian processes

The goal of [Exercises 3](exercises03-SDS383D.pdf) is to equip you with some simple building blocks for nonlinear curve fitting.  Yes, it turns out that "linear smoothing" is used for nonlinear curve fitting -- this sounds like a contradiction, but you'll see what it entails and why it makes sense.  Here both Bayesian and frequentist approaches feature equally.  

There are a handful of optional problems in these exercises (clearly marked), which I will present in class myself. 


## Exercises 4: Hierarchical models  

The goal of [Exercises 4](exercises04-SDS383D.pdf) is to get you lots of practice fitting hierarchical models to different data-analysis problems.  

The following papers/readings provide useful background for this section.  I'll add to this list as appropriate:  
- [Prior distributions for variance parameters in hierarchical models](http://www.stat.columbia.edu/~gelman/research/published/taumain.pdf) by Gelman; and, optionally, [On the half-Cauchy prior for a global scale parameter](http://projecteuclid.org/euclid.ba/1354024466), by Polson and Scott.   
- [The normal-Wishart prior](https://en.wikipedia.org/wiki/Normal-inverse-Wishart_distribution), from Wikipedia (or any similar source).  Kevin Murphy also has [some useful notes](http://www.cs.ubc.ca/~murphyk/Papers/bayesGauss.pdf) that summarize this distribution; see Section 8 in particular.   
- [Bayesian analysis of binary and polychotomous response data](http://www.stat.cmu.edu/~brian/905-2009/all-papers/albert-chib-1993.pdf), by Albert and Chib.  
- [Fitting mixed-effects models by REML](http://web.mit.edu/xiuming/www/docs/tutorials/ReML.pdf).  [How it works in the lme4 R package](https://cran.r-project.org/web/packages/lme4/vignettes/Theory.pdf).  
- [Simon Jackman's paper on spatial voting models](https://academic.oup.com/pan/article-abstract/9/3/227/1453708/Multidimensional-Analysis-of-Roll-Call-Data-via).  You can find an application of this framework in [our paper on family-planning legislation in the Texas Legislature.](https://www.ncbi.nlm.nih.gov/pubmed/26794846)  




