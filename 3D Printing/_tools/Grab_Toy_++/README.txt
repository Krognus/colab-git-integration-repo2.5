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


https://www.thingiverse.com/thing:2750749
Grab Toy ++ by ecoiras is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

**Grab Toy ++**
==========

Introduction:
----------------------------

Had lots of problems printing the amazing Scissor Snake family (https://www.thingiverse.com/thing:1902131) with hinges fusing together and some parts snapping. So I tried to design a simpler hinge that could also be printed in place using OpenSCAD, where I could play with different spacings between the moving parts.

Then I did the code for the rest of the toy, learning OpenSCAD along the way. Very cool software!

Tips:
----------------------------

Instead of printing the biggest grabtoy here and be disappointed it fused together, you can first check which spacing works better for your printer settings by printing the HingeSlackTest() model.

The default slack of 0.5mm is a good starting point. The lowest I managed when printing PLA at 0.2mm resolution with my Anycubic I3+ at normal (i.e. fast) speed was 0.35, but only at very low temperatures (190º) which results in poorer surface finish.

I found that robustness of the toys varied a lot depending on the slicing software, with some not putting extra material in thin regions that are structurally important (mostly the cores 
and shoulders of the hinges). Playing around I realized that some carefully placed thin slits forced the slicers to create extra walls, thus reinforcing some key areas. Enable or disable
them by setting REINFORCE_CORE and REINFORCE_SHOULDER to true or false.

Main routines:
----------------------------

**HingeSlackTest()** generates a 4-hinge test model with slacks of 0.6, 0.5, 0.4 and 0.3mm. Print it to see how small can you set the spacing for the hinges before they fuse together. Then set the slack parameter accordingly and render one of the grabtoy models below.

**GrabToyPlusPlus4hinges()** generates the simplest grab toy model, with just one expansion frame.

**GrabToyPlusPlus10hinges()** makes a bigger grab toy, with 3 expansion frames.

Included STL files:
---------------------------

**GTpp_HingeSlackTest.stl:** a render of the hinge test model.

**GrabToyPlusPlus_4hinges_slack05.stl:** render of the short grabtoy, using 0.5mm slack for the hinges.

**GrabToyPlusPlus_10hinges_slack05.stl:** long grabtoy render, 0.5mm slack.

Enjoy!