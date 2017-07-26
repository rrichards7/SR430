# Stanford Research Systems SR430 - Photon Counter #
*Lead Architect: Ryan J. Richards*

*The Pennsylvania State University - School of Electrical Engineering and Computer Science*

![sr430class_lvclass_mainp](https://user-images.githubusercontent.com/23239868/28597605-cf4266b6-716c-11e7-9996-f7b5daddc2f0.png)

## Introduction ##

The SR430 is a photon counter developed by Stanford Reseach Systems. The SR430 is the first multichannel scaler which combines amplifiers, discriminators, bin clocks, and data analysis in a single, integrated instrument. With its many features and its easy-to-use menu driven interface, the SR430 simplifies time-resolved photon counting experiments.

The SR430 Multichannel Scaler/Averager can be thought of as a photon counter that counts events as a function of time. A trigger starts the counter which segments photon count data into sequential time bins (up to 32k bins). The width of the bins can be set from 5 ns to 10 ms. The instrument records the number of photons that arrive in each bin.

The SR430 is useful in a variety of applications where it is necessary to count events as a function of time: LIDAR, time of flight mass spectroscopy, and fluorescence decay measurements are just a few examples.

LabVIEW code has been developed to interface with the SR430 and provide a general user interface to collect data (single or timed acquisition), save graphs/raw values and change collection settings on the device itself. This readme document will provide the user with information regarding architecture considerations, download processes of the LabVIEW code (or .exe/installer files), operating the GUI, as well as setting up the hardware itself.

More information about the SR430 can be found here: [SR430](http://www.thinksrs.com/products/SR430.htm)

## LabVIEW Architecture ##

Before subsystems are described in futher detail, it is important to understand the architecture chosen. This code is structured around events and message chains - i.e. when the user presses a button then an event will be triggered and something will happen, or a chain of events will happen. The best and most efficient architectre to accomodate this system is a message-queue based producer/consumer loop (shown in figure below).

![1](https://user-images.githubusercontent.com/23239868/28603236-fdcc52a2-7190-11e7-9f51-36cdbe11adc6.JPG)

The producer loop is based on an Event Structure, which is programmed to read changes in control values. Therefore each control (button) on the front panel has its own case (along with other user-defined events) in the Event Struture (shown in figure below).

![2](https://user-images.githubusercontent.com/23239868/28603003-68464ff4-718f-11e7-94a5-64838b89328a.JPG)


For instance, if the user clicks the "Start" button then the event will register in the producer loop and the appropriate message will be added to the queue - in this case "Start Single Acq" (shown in figure below).

![sr430class_lvclass_maind1](https://user-images.githubusercontent.com/23239868/28603024-98dcc512-718f-11e7-8207-2e7aa007810b.png)


Once the message is enqueued, the message is sent to the consumer loop, where it is fed into the case selector of the case structure. This means that if an "Start Single Acq" message is sent, then the "Start Single Acq" case will be selected in the case stucture of the consumer loop (shown in figure below).

![sr430class_lvclass_maind30](https://user-images.githubusercontent.com/23239868/28603032-a7f3c398-718f-11e7-8acd-42eaba1db3ba.png)


Therefore the consumer loop executes code to complete the action associated with the message. So in this case, if the user wants to open a path:
(1) the "Open Path" button is pressed
(2) the button-press action is registered by the event structure
(3) the "Open Path" message is enqueued and sent to the consumer loop
(4) the dialog to open a path, etc is executed

Then an object-oriented data flow structure is create whereby a new data class is made which houses all feedback information (e.g. graph data, VISA resources, refnums, etc). Therefore, every time a subVI executes, it pulls information from the object and delivers updated information to the object for any subsequent case.

## Download Code ##

Navigate to the main SR430 github repository. Then click **Clone or Download** >> **Download ZIP**.
<img width="1007" alt="cap1" src="https://user-images.githubusercontent.com/23239868/28598319-ccbe37ae-7170-11e7-85e2-c55147a68a64.png">

Extract the contents of the folder to a desired location

Navigate to the LabVIEW project file: **SR430-master** >> **project** >> **SR430.lvproj**

## Hardware Setup ##

The hardware setup process is simple: connect the SR430 to the any USB port on the main PC. Ensure that the SR430 is connected to a power supply. Connect any neccessary instruments.

## LabVIEW GUI ##

This section describes how to use the GUI, namely settings/mode Control, single and timed acquisition as well as exporting information/graphs.

### Settings/Mode Control ###

### Single Acquisition ###

In order to acquire a single 

### Timed Acquisition ###

### Exporting Information/Graphs ###

## Quickstart with Function Generator ##

## Appendix ##
