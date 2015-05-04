# Homework 3 :: CP 125 iOS App Dev, Spring 2015 #

The files for this homework are also available at the following
repository on GitHub:

>  <https://github.com/carljparker/layout-constraints-uw-ios-hw3>

The app for this homework displays weather information using a UI that
adapts to various iOS devices in various orientations. I have tested the
app using the iOS simulator with the following devices, each of these in
both portrait and landscape mode:

- iPad Retina
- iPhone 5s
- iPhone 6+

I have also successfully downloaded the app to my iPhone 5s and tested
that it runs correctly.


## Weather Data ##

The weather information for temperature and for sunrise and sunset times
is extracted from the `WeatherData.plist` file provided with the
assignment. 

The values used for the city (Seattle) and current temperature (47) are
hardcoded into the app. My reading of the assignment seemed to indicate
that this was acceptable. It was only later when I studied the plist
file that I realized that I could have provided these values dynamically
as well. Note the the code for the app does, in any case, extract the
city data--it simply doesn't take the extra step of displaying it in a
field.


*** END ***

