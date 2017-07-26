# Stanford Research Systems SR430 - Photon Counter #
*Lead Architect: Ryan J. Richards*

*The Pennsylvania State University - School of Electrical Engineering and Computer Science*

![sr430class_lvclass_mainp](https://user-images.githubusercontent.com/23239868/28597605-cf4266b6-716c-11e7-9996-f7b5daddc2f0.png)

## Introduction ##

The SR430 is a photon counter developed by Stanford Reseach Systems. The SR430 is the first multichannel scaler which combines amplifiers, discriminators, bin clocks, and data analysis in a single, integrated instrument. With its many features and its easy-to-use menu driven interface, the SR430 simplifies time-resolved photon counting experiments.

The SR430 Multichannel Scaler/Averager can be thought of as a photon counter that counts events as a function of time. A trigger starts the counter which segments photon count data into sequential time bins (up to 32k bins). The width of the bins can be set from 5 ns to 10 ms. The instrument records the number of photons that arrive in each bin.

The SR430 is useful in a variety of applications where it is necessary to count events as a function of time: LIDAR, time of flight mass spectroscopy, and fluorescence decay measurements are just a few examples. [1]

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

## Download and Open Raw Code or Executable ##

Navigate to the main SR430 github repository. Then click **Clone or Download** >> **Download ZIP**.

<img width="1007" alt="cap1" src="https://user-images.githubusercontent.com/23239868/28598319-ccbe37ae-7170-11e7-85e2-c55147a68a64.png">

Extract the contents of the folder to a desired location

### Open Raw LabVIEW Code ###

(1) Navigate to the LabVIEW project file: **SR430-master** >> **project** >> **SR430.lvproj**

(2) Open the **SR430Class.lvclass** class folder >> **Main.vi** (this is the main GUI VI).

![6](https://user-images.githubusercontent.com/23239868/28633156-e07c6fbe-7200-11e7-9aa1-fb42b3137142.JPG)

### Open .exe file ###
If you want to open the executable file rather than running the raw LabVIEW code then:

(1) **SR430-master** >> **builds** >> **SR430.exe**

![7](https://user-images.githubusercontent.com/23239868/28633240-20a34e28-7201-11e7-90f5-bf8508477c37.JPG)

## Hardware Setup ##

The hardware setup process is simple: 

(1) connect the SR430 to the any USB port on the main PC

(2) ensure that the SR430 is connected to a power supply

(3) connect any neccessary instruments to the **Front Panel BNC Connectors**

![4](https://user-images.githubusercontent.com/23239868/28629115-79095466-71f4-11e7-8768-c5eef645e5f5.JPG)

![5](https://user-images.githubusercontent.com/23239868/28629125-850346aa-71f4-11e7-9789-c6deebece188.JPG)

## LabVIEW GUI ##

This section describes how to use the GUI, namely settings/mode Control, single and timed acquisition as well as exporting information/graphs.

### Settings/Mode Control ###

The SR430 allows the user to change different system settings including the following: bin width, trigger offset, bins/record, records/scan, disciminator voltage level, trigger voltage level, trigger and discriminator slopes (rising/falling), as well as using the internal or external clock.

These controls are disabled and greyed out so that the user is not confused about which settings are currently on the device. To change the settings the user must follow the appropriate sequence:

(1) click the **Mode** button to enable the *System Settings* controls.

(2) make any necessary changes to the *System Settings* panel

(3) click **Accept** to configure the SR430 with the values that have been entered. Then, the program will automatically disable the controls and display a message regarding the device configuration status. 

**Note:** If the user clicks the **Mode** button and *does not* want to make any changes to the settings, then they can simple click the **Mode** button again, which will disable the system settings controls.

### Single Acquisition ###

In order to acquire a single set of data through the connected instrument, follow these steps:

(1) *optional:* change any system settings by clikcing the **Mode** button

(2) click the **Single Acq** button. The program will automatically pause and clear the graph to ensure that there are no acquisition errors. 

**Note:** the acqusition results are displayed automatically on the main SR430 graph

### Timed Acquisition ###

In order to acquire multiple sets of data with a *delay* between each acquisition, follow these steps:

(1) *optional:* change any system settings by clikcing the **Mode** button

(2) click the **Schedule** button to enable all controls on the *Timed Acquisition* panel. This now allows the user to create a timed acqusition schedule. *Note:* if the user does not want to create a schedule after clicking the **Schedule** button then click the **Schedule** button again to disable the controls.

(3) create the desired *delay* between each acquisition by changing the **Hours**, **Minutes** and **Seconds** controls

(4) input the amount of times the SR430 should acquire data by changing the **Acquisition Iteration** control

**Note:** When the timed acqusition ends, a messge will be dispalyed on the main feed. The user now may want to export all data to Excel.

### Exporting Information/Graphs ###

Once a single or timed acquisition is complete, the user can save the data or single-plot graphs by following these steps:

*Saving a graph as an image file*

(1) ensure that information is displayed on the SR430 graph

(2) click the **Save Graph** button (this will display a pop-up window)

(3) click the **File Browse** control to navigate to the place in which the file will be saved

(4) change any of the following controls as the user sees fit: **File Type**, **Target**, **Hide Grid**, **Always Overwrite**

(5) click the **OK** button to save the graph to the desired location. If the user wants to cancel the saving process, then click **Cancel**. The pop-up window will then disappear.

![3](https://user-images.githubusercontent.com/23239868/28628476-c1b84f2a-71f2-11e7-914a-66cb6809a857.JPG)

*Saving information to Excel*

(1) ensure that information is displayed on the SR430 graph

(2) click the **Excel Exp** button. This will prompt the user to enter the location where the Excel file should be saved.

(3) once navigated to the correct location, enter the name of the file and click **OK**.

(4) a pop-up window will display and ask if you want to encrypt the Excel file. If you do then enter a password and click **OK**. If you do not want to encrypt the file then leave the password field blank and click the **OK** button. The file will then save.

## Quick Performance Test with Function Generator ##

I would encourage everyone to setup and execute the quick performance test provided by the SR430 user manual [2]. It has been copied here for convenience:

This setup requires a 1 Hz to 2 kHz TTL trigger source. A simple function generator will suffice.
Hold down the CLR key while turning the unit on. This resets the SR430 to its default state.
Connect the trigger source to the TRIGGER input on the front panel. Set the Trigger Level and Slope in the
LEVELS menu appropriately for the trigger source. Use a 5 foot length or longer BNC cable to connect the
TEST output on the rear panel to the SIGNAL input on the front panel. Set the Disc Level to -300 mV and the
Disc Slope to Falling.

Set the trigger rate to 1 kHz. Press the START key. Data acquisition should begin. The default bin width is 5
ns and the record length is 1k. 1000 records will be accumulated. When the scan is done, press AUTOSCALE
to scale the display. The TEST output is a 50 MHz signal so a pulse occurs every 20 ns or every 4 bins. The
data should have 1000 counts in every 4th bin.

Use the Mode menu to select different bin widths and records per scan. Records with longer bin widths trigger
at lower rates so the trigger rate needs to be lowered to avoid RATE errors. Use the formula for Tbusy in the
Specifications section of the manual to calculate the maximum trigger rate for each bin width and record
length. Longer bin widths also require a smaller number of records per scan to avoid overflow. This is because
each bin acquires a larger number of counts per trigger.

Bin widths of 40 ns and longer will collect data in every bin. The first bin may have 1 less count per trigger
than the other bins. For longer bin widths 163 µs or longer, the data may vary up to ±7 counts per bin per trigger.
This is due to the jitter in the longer bin widths.

After acquiring data, use the other menus to scale the data, smooth or perform calculations with the data,
save and recall data to disk, etc.

## Appendix ##

LabVIEW Drivers: https://wiki.gsi.de/foswiki/bin/view/NIUser/LabVIEWInstrumentDriver#SR430

[1] http://www.thinksrs.com/products/SR430.htm

[2] http://www.thinksrs.com/downloads/PDFs/Manuals/SR430m.pdf

