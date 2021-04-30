
# traffic-light-system

Contributors:
Dumitru Stratulat
Jakub Wojcik
Anil Jason
Yash Rawat

![](https://imgur.com/a/bCkzouV.png)

![Picture 1](https://user-images.githubusercontent.com/62725538/116269300-03671980-a776-11eb-9a6c-68bce6a2f756.png)

https://user-images.githubusercontent.com/62725538/116686766-3135a380-a9ac-11eb-8a70-2bfb620d6cdf.mov

Given the graphical representation above, I’ll be vaguely speaking about the initial task released to us as part of Block 1 – Group Work Traffic Light Project. As illustrated above, we can see the set of traffic lights as well as one set of pedestrian crossings along with roadworks in the middle of the junction. Traffic lights labelled X, Y are there to determine traffic flow whilst Y is a pedestrian light displaying only two colours: red, green.

# Introduction:

I am writing this documentation to briefly talk about the current Block 1 project that’s been handed over to us. We will be working within a team of 4 individuals which will be responsible for programming, design and prototyping. This project is about putting all of our knowledge gathered from Block 1 design, synoptics, programming as well as physical computing into one. Our challenge we are facing with is to design and prototype a traffic light system to safely control the flow of traffic along a road. A big chunk of this traffic light system will be both the traffic lights themselves, but also temporary traffic lights fitted alongside the roadworks.


# System overview:

As illustrated down below, as a project we have a classic example of a traffic light system which is used to control and manipulate the flow of traffic, it is also enhanced with a push button-operated pedestrian crossing allowing them to safely cross the road, this example also features roadworks with extra lights and the whole system has the length of 200 metres. The system comes with four different variables (Z, X, Y, Z). Z is responsible for both left and right traffic lights which work in a sequence (Green, Amber, Red, Amber, Green). X is responsible for the road and Y is responsible for a push button pedestrian crossing which makes the traffic lights go red, stopping traffic. In addition, we came to the conclusion that traffic lights are designed to eliminate traffic by splitting chunks of traffic into smaller bits which aids pollution and increases overall on-road safety.

# Delegation: 
Before starting to work on this project we decided to split up the work by setting ourselves different roles throughout the project to spread the load of this assignment making work much more effective as we are all able to work independently on our tasks set. Dumitru was responsible for the majority of the code, and the GUI, I was responsible for creating this documentation, creating the FSM, creating Arduino’s on Tinkercad. Yash was responsible for creating the Arduino physically since he is the only one that has the kit. Anil was there assisting all of us whether it was Arduino or the FSM. However, towards the final days before the deadline we all decided to work on this project together fixing any issues, for example if there was something I needed help on such as the Arduino, Dumitru and Anil helped me out, or if Dumitru needed some help with the coding me, Yash and Anil helped him out, we were involved within each other’s roles making sure that the work we’re producing is up to standard and is in a fully working order.

During the early stages of the project, we have decided to work on our own versions of the FSM to then compare all of our designs and create our own one together by taking out the best aspects of each independent design and merging it all into one, this also includes draft sketches of the FSM before me building it up on ‘Creatly’ which is one of the best platforms to use when working with finite state machines / transition diagrams.

# Equipment: 

For our team to be able to successfully complete this Block 1 Project we will need nothing but advanced simulation software running on our computers due to the outbreak of COVID-19, unlike traditionally we would wire up this project manually in a computer lab using Arduino we now have to use simulation software, a good example of that would be Multisim as well as Tinkercad, which is a virtual one-to-one Arduino. Midway through the project we decided that Yash orders the Arduino kit from Michael so that we could be able to assemble the traffic lights, we could’ve stayed with just using Tinkercad but it was wiser to get a real Arduino kit as it makes it much easier for us to understand how the microcontroller works.


# The Start (SOB 20,21): sob - student observable behavior (usually tasks)

Just before the start of this project, our team insisted in being very efficient time wise, which persuaded me into creating a Trello account as well as creating a timetable to illustrate how many hours we would need to designate on our project to be able to finish it before the deadline whilst getting our different SOBS observed at the same time. Although it was unnecessary, I still created it as working at home and not attending physical University labs, lectures making uni feel very optional meaning students do experience motivational issues, I know from experience because our team me included didn’t feel motivated to make a start. However, after introducing this timetable and designating the time it drastically changed the team’s workflow as suddenly, we all got inspired and decided to make a start, ever since making a start we have never missed a group meeting and we’ve never missed a mini deadline set by ourselves. For the team meetings we designated ourselves one-hour sessions on Monday mornings, Thursday mornings and Friday mornings where we all met up on Zoom, spoke about the work, and completed it!
![image](https://user-images.githubusercontent.com/62725538/116674353-718d2580-a99c-11eb-85b5-43c40de80f4d.png)

The project started with all of us three getting out of our comfort zone and getting to know each one another as we were meant to work in our own groups, this wouldn’t be so difficult usually but because of COVID-19 we were forced to interact with strangers until we eventually became friends during the project. We first started of designing our own versions of the FSM until we found the best one out of all of them and decided to use it, we then designated three to four hours studying chapter 6/7 Physical Computing to get a grasp understanding of Arduino. We first made a few basic models to see how the Arduino works, we even made a basic traffic light system with a push button and one set of traffic lights (Red, Amber, Green), followed by a few simple lines of code we made this Arduino work. !

<p float="left">
  <img src="https://user-images.githubusercontent.com/62725538/116674703-e52f3280-a99c-11eb-8b96-f48cc8b3914f.png" width="400" />
  <img src="https://user-images.githubusercontent.com/62725538/116674716-e7918c80-a99c-11eb-9e1b-39d06ab498c4.png" width="500" /> 
</p>
<p float="left">
  <img src="https://user-images.githubusercontent.com/62725538/116675685-fcbaeb00-a99d-11eb-9125-7b3965c0ff62.png" width="400" />
  <img src="https://user-images.githubusercontent.com/62725538/116676007-61764580-a99e-11eb-993d-76a60c0f726c.png" width="400" /> 
</p>
<p float="left">
  <img src="https://user-images.githubusercontent.com/62725538/116676059-7226bb80-a99e-11eb-8cbd-dc8ffeb0bddf.png" width="400" />
  <img src="https://user-images.githubusercontent.com/62725538/116676783-5243c780-a99f-11eb-97e3-54b119339aa7.png" width="400" /> 
</p>

As shown on images, we have also created a physical copy of the Arduino, we first prototyped it on Tinkercad to get a general overview of how it’s going to look like. As shown, there are three different traffic lights as well as a separate pedestrian crossing. We wanted to implement a buzzer, but the Arduino kit supplied to us hasn’t arrived with a buzzer.

# Final State Machine (FSM):
<img width="2300" alt="Screenshot 2021-04-18 at 11 27 06" src="https://user-images.githubusercontent.com/62725538/116681421-e1071300-a9a4-11eb-921f-e480f940b9fe.png">


# Implementation: 

The very first step to illustrate how an algorithm works is to create lights which have names, x1 x2 for the main road Y, for street traffic lights that intersect the main road Z for pedestrians. The full cycle starts with the main road, x2 light turning on all lights are red in that time while x2 turning green, after some time x2 turn red and x1 turns green, shortly after x1 turns red, there’s a check. If the pedestrian light turns on (button pressed) if yes pedestrian light will turn green after a while it turns red and then cycle continues, Y light turns green before executing transitional procedure(red+amber) after a while the light will turn red, therefore checking function is executing and deciding if pedestrian light should turn green (in case the buttons pressed) if yes the pedestrian light turns green after a while it turns red and this is end of one full cycle.

<img width="495" alt="Screenshot 2021-04-30 at 11 52 21" src="https://user-images.githubusercontent.com/62725538/116685626-92f50e00-a9aa-11eb-9336-43ba6b9b8a8f.png">


# Possible additions:

For this project there are several additions we could make, although we added so many different optional things such as the GUI along with the Arduino, I feel like we could’ve made this project even better by enhancing the GUI to make it look even better, but for that we would need to use a different programming language, a good one I would say would be Java Swing as it’s one of the best languages out there to create Graphical User Interfaces. Within the limitations of Racket, we would enhance the overall look of the Interface by coloring buttons and adding different colors to the roadmap. 
Furthermore, I was thinking to add a buzzer which would alert the pedestrians when they are crossing the road, in one of my Arduino prototypes I implemented a buzzer which buzzes when the green pedestrian light is about to go off to let the pedestrians know that the time is about to run out, I think that this is one of the best features for health and safety as for someone that is blind won’t really know when to cross or not. 

# Conclusion

Summing things up, this Block 1 project has been a really good challenge for us, really testing our limits and showing us how good we are under critical conditions especially tough during COVID-19, many of us were facing personal/family issues but we did the best we could, and I personally believe we did well time wise as well as work wise since we still have a week left when I’m writing this. During the first two weeks of when this projected had been handed over to us we faced numerous team related issues, me an Dumitru have been previously in a different group of three people where they simply decided to stop working in a group even though we completed 30% of the work. Ever since that, me and Dumitru teamed up with Anil and decided to work on this project ourselves. We stuck to our timetable, never missed a meeting and just did the work.

















