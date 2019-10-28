# Life-Expectancy-vs-GDP
I have recently discovered the gganimate package on R and I am amazed by how easy it is to run animation on existing ggplot graph. I tested it out using a [life expectancy dataset from Kaggle](https://www.kaggle.com/kumarajarshi/life-expectancy-who) that has data from the year 2000 to 2015. What we can see is that over the years as GDP improves for the respective continent, life expectancy increases as well. To prove this, I ran a linear regression model and I was able to obtain a low p-value of 0.05. This means that there is in fact a non-zero correlation between life expectancy and GDP. 
## Linear regression model 
![Summary of linear regression model](https://user-images.githubusercontent.com/46987985/67651500-4b885e80-f97c-11e9-8350-8441925f8756.png)

## gganimate
I ran the animation using gganimate and adjusted the frame time according to the year.

## Result

<img src="https://media.giphy.com/media/Y0gHrpq7xi9ccNL9Wj/giphy.gif" alt="Animated GIF" style="width: 480px; height: 480px; left: 0px; top: 0px; opacity: 1;">
