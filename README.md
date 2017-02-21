# MTPI/Santander Mobile Automation With Cucumber + Calabash  #

This is a small framework that uses Cucumber and Page Object to execute test on Selenium Webdriver for MTPI/Santander Solutions.

### Setting Up ###

Ruby 2.2-3 is recommended to run the tests. We're gonna use [RVM](https://rvm.io) to control the ruby version.

```
$ rvm install ruby-2.2.3
```

### Build and Run ###

To install all the required dependencies just run ```$ bundle install ``` in the project root folder.

To run the automation on your local you can follow the example below.

1. First, you have to start your device. In this case we are using a GenyMotion Virtual Device.
![GenyMotion](pic01.png)

2. Then, start the Appium Server. Just remember, the platform version needs to be the same as the device (Android Settings).
![GenyMotion](pic02.png)

3. Finally, run the automation :)
```
calabash-android run apps/TrianguloApp.apk
```

So... you might see something like this:

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/MkaOGmxhgW0/0.jpg)](https://www.youtube.com/watch?v=MkaOGmxhgW0)
