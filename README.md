# Important notice

Starting on Wednesday 1/25, we will meet in GDC 7.514 -- NOT in Parlin 301.  

# SDS 383D

Welcome to SDS 383D, a Ph.D.-level course on statistical modeling.  All course materials can be found through this GitHub page.  

Some course logistics   
- Instructor: James Scott, <http://jgscott.github.com>  
- Meets: Mondays and Wednesday, 3:00 - 4:30
- Classroom: GDC 7.514

## Exercises 

[You can find all the exercises here.](exercises/)  I'll post them as they become relevant throughout the semester.

## Peer evaluation  

For the purpose of peer evaluation, you can find links [to people's GitHub pages here](team/).  

## About the course

This course is primarily about hierarchical Bayesian modeling, although there will be other topics that arise, as well.  In terms of substantive prerequisites for the course, I assume that you know the following topics, in order of importance:   
- linear algebra  
- how to program in a language like R or Python  
- multivariable calculus 
- probability (although measure theory isn't necessary)  
- basic inferential statistics: sampling distributions, confidence intervals, etc.  
- regression (including some exposure to generalized linear models)  

If you have any doubt about your preparation for this course, feel free to chat with me on the first day.  

This is a blend between a traditional lecture-based course and a [Moore-method](https://en.wikipedia.org/wiki/Moore_method) course.  Some of the time is spent on lectures in class.  But a lot of the other class time is spent with you in charge.  You will work on the [exercises outside of class](exercises/).  When you come to class, you will share what you've done, and benefit from understanding what others have done.   We will end up covering less than in a traditional lecture-based course.  But what you learn, you will learn very deeply.  The trade-off is more than worth it.   


## Grading

Your grade consists of three pieces: 50% peer evaluation, 30% final project, and 20% final exam.

### Peer evaluation

During the semester, you will be expected to do three main things on a recurring basis:  
1) Work on the problems and coding assignments outside of class, and document your code so that someone else can follow it.  You will post all of your code and materials on your GitHub page.   
2) Present your work in front of class, either up at the board or by hooking up your computer and showing us your code and results.  
3) Provide at least four "peer reviews" of others' code and analyses from their GitHub pages, so that everyone gets feedback.  You'll do this about once every 3-4 weeks, and I'll assign the reviewers randomly.  

At the end of the semester, everyone will (privately) turn in a document that summarizes their assessment of each person's contribution to the course.  Those who have helped others to learn, either by presenting excellent work in class, or by offering thoughtful peer reviews, will presumably get good evaluations.  I'll use these summaries to set the peer-evaluation grades.  (Note: I'll still have the final say here.)  

### Final project  

Pick some relevant topic that interests you.  Clear it with me ahead of time, and then do it!  Basically, I trust you to choose something that will optimize your own learning experience, and that will dovetail with your research and educational goals.  It certainly can overlap with your own research.  Examples:  
1) Analyze a data set from your own research, using techniques from class or closely related techniques.  
2) Invent a new technique and show how awesome it is.  
3) Prove something interesting about a procedure or algorithm related to what we're studying (admittedly unlikely, but certainly possible!)  
4) Read a paper, or a group of related papers, that expands on some topic we've covered in class.  Implement the method and benchmark it against something else.  

Final projects are due on the last class day of the semester: Friday, May 5.  

Note: you should feel free to work in a team (of 3 or less) for the projects.


### Final exam

There will a take-home final exam.  You'll take it on your own, on the honor system.  It is reasonably low stakes as far as final exams go (20% of grade).  The goal is to provide preparation for (i.e. a simulation of) the first-year exam that all SDS 1st-year PhD students must take in May, since this course is on the syllabus for that exam.  


## Requirements  

1) Set up a [GitHub](www.github.com) account if you don't already have one.  

2) Learn how to use GitHub, either via the command line or through a source-code browser like GitHub Desktop or SourceTree.   

3) Optional, but recommended: bring your own data!  


## Topics

Here's a partial list of topics that we'll cover.   

- Review of basic Bayesian inference
- Review of classical inference techniques in regression 
- The multivariate normal distribution
- Linear smoothing and local regression
- Gaussian processes
- Additive models and backfitting
- Simple hierarchical models and Gibbs sampling
- Hierarchical linear regression models
- Inference for hyperparameters in hierarchical models
- Hierarchical GLMs
- Data augmentation algorithms
- Bayesian time-series and/or spatial models
- Mixture models and/or latent factor models (if time)

The recommended (though not officially required) reference book is [Data Analysis Using Regression and Multilevel/Hierarchical Models](http://www.stat.columbia.edu/~gelman/arm/), by Andrew Gelman and Jennifer Hill.  An e-book version is available through the [UT Library website](http://www.lib.utexas.edu).

## Miscellaneous links  

### Bayesian model selection

Some more "modern" classics:  
- [Testing precise hypotheses](https://projecteuclid.org/euclid.ss/1177013238), by Berger and Delampady (good discussion of p-values)  
- [Bayes Factors](https://www.stat.washington.edu/raftery/Research/PDF/kass1995.pdf), by Kass and Raftery.  
- [Objective Bayesian Methods for Model Selection: Introduction and Comparison](https://projecteuclid.org/euclid.lnms/1215540968), by Berger and Pericchi   
- [The intrinsic Bayes factor for model selection and prediction](https://www.jstor.org/stable/2291387), by Berger and Pericchi (1996).  
- [Mixtures of g priors for Bayesian variable selection](http://amstat.tandfonline.com/doi/abs/10.1198/016214507000001337), by Liang et al (2008).  
- [Nested sampling for general Bayesian computation](https://projecteuclid.org/euclid.ba/1340370944), by Skilling (2006).  Probably the best "general" method going for actually calculating marginal likelihoods.  Note: I always found Skilling's explanation very hard to understand.  I personally like the [explanation here](https://arxiv.org/abs/1409.3601) more; see Section 5.1.   

And some actual classics:  
- [Limiting behavior of posterior distributions when the model is incorrect](https://projecteuclid.org/euclid.aoms/1177699597), by Berk (1966).  
- [Estimating the dimension of a model](https://projecteuclid.org/euclid.aos/1176344136), by Schwarz (1978).  

