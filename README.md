# traffic-light-system


![](https://imgur.com/a/bCkzouV.png)

![Picture 1](https://user-images.githubusercontent.com/62725538/116269300-03671980-a776-11eb-9a6c-68bce6a2f756.png)

Given the graphical representation above, I’ll be vaguely speaking about the initial task released to us as part of Block 1 – Group Work Traffic Light Project. As illustrated above, we can see the set of traffic lights as well as one set of pedestrian crossings along with roadworks in the middle of the junction. Traffic lights labelled X, Y are there to determine traffic flow whilst Y is a pedestrian light displaying only two colours: red, green.

# Introduction 

I am writing this documentation to briefly talk about the current Block 1 project that’s been handed over to us. We will be working within a team of 4 individuals which will be responsible for programming, design and prototyping. This project is about putting all of our knowledge gathered from Block 1 design, synoptics, programming as well as physical computing into one. Our challenge we are facing with is to design and prototype a traffic light system to safely control the flow of traffic along a road. A big chunk of this traffic light system will be both the traffic lights themselves, but also temporary traffic lights fitted alongside the roadworks.


# System overview:

As illustrated down below, as a project we have a classic example of a traffic light system which is used to control and manipulate the flow of traffic, it is also enhanced with a push button-operated pedestrian crossing allowing them to safely cross the road, this example also features roadworks with extra lights and the whole system has the length of 200 metres. The system comes with four different variables (Z, X, Y, Z). Z is responsible for both left and right traffic lights which work in a sequence (Green, Amber, Red, Amber, Green). X is responsible for the road and Y is responsible for a push button pedestrian crossing which makes the traffic lights go red, stopping traffic. In addition, we came to the conclusion that traffic lights are designed to eliminate traffic by splitting chunks of traffic into smaller bits which aids pollution and increases overall on-road safety.

# Delegation: 
Before starting to work on this project we decided to split up the work by setting ourselves different roles throughout the project to spread the load of this assignment making work much more effective as we are all able to work independently on our tasks set. Dumitru was responsible for the majority of the code, and the GUI, I was responsible for creating this documentation, creating the FSM, creating Arduino’s on Tinkercad. Yash was responsible for creating the Arduino physically since he is the only one that has the kit. Anil was there assisting all of us whether it was Arduino or the FSM. However, towards the final days before the deadline we all decided to work on this project together fixing any issues, for example if there was something I needed help on such as the Arduino, Dumitru and Anil helped me out, or if Dumitru needed some help with the coding me, Yash and Anil helped him out, we were involved within each other’s roles making sure that the work we’re producing is up to standard and is in a fully working order.

During the early stages of the project, we have decided to work on our own versions of the FSM to then compare all of our designs and create our own one together by taking out the best aspects of each independent design and merging it all into one, this also includes draft sketches of the FSM before me building it up on ‘Creatly’ which is one of the best platforms to use when working with finite state machines / transition diagrams.

# Equipment: 

For our team to be able to successfully complete this Block 1 Project we will need nothing but advanced simulation software running on our computers due to the outbreak of COVID-19, unlike traditionally we would wire up this project manually in a computer lab using Arduino we now have to use simulation software, a good example of that would be Multisim as well as Tinkercad, which is a virtual one-to-one Arduino. Midway through the project we decided that Yash orders the Arduino kit from Michael so that we could be able to assemble the traffic lights, we could’ve stayed with just using Tinkercad but it was wiser to get a real Arduino kit as it makes it much easier for us to understand how the microcontroller works.

# Implementation: 

The very first step to illustrate how an algorithm works is to create lights which have names, x1 x2 for the main road Y, for street traffic lights that intersect the main road Z for pedestrians. The full cycle starts with the main road, x2 light turning on all lights are red in that time while x2 turning green, after some time x2 turn red and x1 turns green, shortly after x1 turns red, there’s a check. If the pedestrian light turns on (button pressed) if yes pedestrian light will turn green after a while it turns red and then cycle continues, Y light turns green before executing transitional procedure(red+amber) after a while the light will turn red, therefore checking function is executing and deciding if pedestrian light should turn green (in case the buttons pressed) if yes the pedestrian light turns green after a while it turns red and this is end of one full cycle.

# The Start (SOB 20,21):

Just before the start of this project, our team insisted in being very efficient time wise, which persuaded me into creating a Trello account as well as creating a timetable to illustrate how many hours we would need to designate on our project to be able to finish it before the deadline whilst getting our different SOBS observed at the same time. Although it was unnecessary, I still created it as working at home and not attending physical University labs, lectures making uni feel very optional meaning students do experience motivational issues, I know from experience because our team me included didn’t feel motivated to make a start. However, after introducing this timetable and designating the time it drastically changed the team’s workflow as suddenly, we all got inspired and decided to make a start, ever since making a start we have never missed a group meeting and we’ve never missed a mini deadline set by ourselves. For the team meetings we designated ourselves one-hour sessions on Monday mornings, Thursday mornings and Friday mornings where we all met up on Zoom, spoke about the work, and completed it!







