                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:12948
RecycleBot v2.2 by jpearce is licensed under the Creative Commons - Attribution - Share Alike license.
http://creativecommons.org/licenses/by-sa/3.0/

# Summary

A <b>RecycleBot</b> is a waste plastic extruder - that can take household polymer waste and turn it into valuable 3-D printer feedstock.  


Newer better designs are here: Aubrey L. Woern, et al. RepRapable Recyclebot: Open Source 3-D Printable Extruder for Converting Plastic to 3-D Printing Filament. HardwareX 4C (2018) e00026 doi: https://doi.org/10.1016/j.ohx.2018.e00026 [open access](https://www.academia.edu/36721604/RepRapable_Recyclebot_Open_source_3-D_printable_extruder_for_converting_plastic_to_3-D_printing_filament)


Information about the first RecycleBot can be found here: [Recyclebot v1.0](http://recyclebot.tumblr.com/). This was a great proof of concept and based off of a hand-powered design - although fantastic from an environmental/appropriate technology perspective did not create filament of high enough quality to be particularly useful for open source 3D printers.  

The design for the waste plastic extruder (Recyclebot v2.0 and v2.1) is heavily influenced by the Web4Deb extruder, which extrudes HDPE for use as a growth medium in aquaponics. Details of the Web4Deb design are [here](http://web4deb.blogspot.com/2010/12/plastic-extruder-for-growing-media.html). As part of Mechanical Engineering course, that I supervised, Christian Baechler developed [Recyclebot v2.0](http://www.appropedia.org/Waste_plastic_extruder) an automated device to automatically convert household plastic waste into usable material to be fed into small scale rapid prototyping machines, such as the RepRap. This design was improved upon within the group - especially with the help of [Matthew DeVuono](http://www.thingiverse.com/mdevuono) to make v2.1. The results of this are extremely promising and the work will be published.  

The RecycleBot work is now being carried out by members of the [Michigan Tech in Open Sustainability Technology Research Group](http://www.mse.mtu.edu/~pearce/Index.html).  

The v2.2 is -- I am sure over-designed -- but we needed a reliable tool (v2.0/v2.1 were made of wood and we kept breaking it and sending pieces all over the lab). I am sure the attached design is working though so felt ready to post.  

Our goal is to have a fully automated system running off of an Ardruino. Imagine pressing a button for recyclable plastic 1-7, shredding your given plastic waste container in a office shredder, having the Recyclebot automatically shift its setting and output commercial grade 3-D printer filament while you go for lunch.   

We are about half way there -- if anyone would like to help particularly on the controls side - please drop me a line. Improvements will be posted on a [wiki](http://www.appropedia.org/Recyclebot) first  as we go and imported to Thingiverse when they are solid.  

More info: Christian Baechler, Matthew DeVuono, and Joshua M. Pearce, [Distributed Recycling of Waste Polymer into RepRap Feedstock](http://www.academia.edu/2643418/Distributed_Recycling_of_Waste_Polymer_into_RepRap_Feedstock), Rapid Prototyping Journal, 19(2), pp. 118-125 (2013).  


# Instructions

<b>How it works</b>  
The Recyclebot consists of 3/4" (inner diameter) piping divided into  a gearing, hopper and heating section. Shredded plastic is fed into the hopper and transported to the heating section by a 3/4Ã¢â¬Â - 17" ship bore auger driven by a windshield wiper motor. Power is transferred from motor to auger using a sprocket and chain drive system with a 2:1 gear ratio to decrease speed and increase torque. The motor has a stall torque of 30Nm and runs at 35rpm on the low speed setting. The gearing section of the extruder body houses the auger and also provides support for a thrust bearing and collar used to counter axial force encountered during transportation of the ground plastic.  

Plastic pushed into the heating section is melted and forced through a die producing plastic filament. The heating zone consists of insulated 14 gauge nichrome 80 wire wrapped around the barrel and secured with heat resistant Kapton tape. You can also use furnace cement between the piping and uninsulated nichrome to prevent short circuiting through the pipe at high temperatures. Fourteen gauge wire was chosen in an effort to create the heating zone with minimal power requirements. (Based on other work we are trying to create a completely solar powered distributed manufacturing tool set [3-D Printing of Open Source Appropriate Technologies for Self-Directed Sustainable Development](http://www.ccsenet.org/journal/index.php/jsd/article/view/6984).   

Wire temperatures of 225C were achieved with 75W of power (15V, 5A). Temperature can be adjusted by altering the current passing through the nichrome wire - so that you can personalize the settings for a given polymer or mixture.   

HDPE filament has been successfully produced with this method at an average rate of 90 mm/min and used to print parts. The filament diameter averaged about 2.8mm.  

<b> To do</b>:  
1. Full mechanical assembly instructions  
2. Operation instructions  
3. Design improvements and post extrusion winding, cooling/solidification methods  
4. Electronics/software  
5. Experimental results on filament and RepRap print quality  
6. Tricks to print waste polymers successfully