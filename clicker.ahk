﻿Hotkey, *LButton, Toggle
Hotkey, *RButton, Toggle
SoundPlay, %F1%
Gui, Add, Tab, x2 y-1 w297 h225 , Home|Left|Right|Binds|Other|Configs
Gui, Color, Black ;gui color
Gui, Tab, Home ;gui tab
Gui, Font, S30 CDefault, Helvetica ;specifies what type of font is it
Gui, Font, cWhite
Gui, Add, Text, x65 y70 w230 h70 , leanclicker ;adds the text in info
Gui, Font, cWhite
Gui, Font, S10 CDefault, Helvetica ;specifies what type of font is it
Gui, Font, cWhite
Gui, Add, Text, x65 y110 w200 h40 , best, free clicker for mc
Gui, Font, S10 CDefault, Helvetica ;specifies what type of font is it
Gui, Font, cWhite
Gui, Add, Text, x5 y205 w210 h17 , Version: 2.0 -Beta ;add text about version down of the gui
Gui, Font, cWhite
Gui, Tab, Left ;gui tab
Gui, Add, Text, x10 y35 w277 h20 , Min. Delay (ms) ;adds text how to use it
Gui, Font, cWhite
Gui, Add, Slider, x10 y49 w277 h30 vMin gMin ToolTip Range0-500, 21 ;add a slider
Gui, Font, cWhite
Gui, Add, Text, x10 y89 w277 h20 , Max. Delay (ms) ;adds text how to use it
Gui, Add, Slider, x10 y109 w277 h30 vMax gMax ToolTip Range0-500, 116 ;add a slider
Gui, Tab, Right ;gui tab
Gui, Font, S11, CWhite, Helvetica
Gui, Add, Text, x10 y29 w277 h20 , Min. Delay (ms) ;adds text how to use it
Gui, Add, Slider, x10 y49 w277 h30 vMinBuild gMinBuild ToolTip Range0-500, 25 ;adds a slider 
Gui, Font, S9, CWhite, Helvetica
Gui, Add, Text, x10 y89 w277 h20 , Max. Delay (ms)  ;adds text how to use it
Gui, Add, Slider, x10 y109 w277 h30 vMaxBuild gMaxBuild ToolTip Range0-500, 62 ;adds a slider 
Gui, Tab, Binds ;gui tab
Gui, Add, Text, x12 y29 w220 h30 , Left Clicker Toggle: P ;adds text how to use it
Gui, Add, Text, x12 y49 w250 h30 , Left Clicker usage: hold LMB ;adds text how to use it
Gui, Add, Text, x12 y69 w220 h30 , Rightclicker: L ;adds text how to use it
Gui, Add, Text, x12 y89 w220 h30 , Rightclicker usage: Hold RMB ;adds text how to use it
Gui, Add, Text, x12 y140 w330 h30 ,Blockhit Bind: LAlt
Gui, Add, Text, x12 y160 w330 h30 , Suspend key: Insert
Gui, Tab, Other ;gui tab
Gui, Add, Text, cBlue gdsc, discord ;reffer to line 84
Gui, Add, Text, cBlue gGithub, github ;reffer to line 88
Gui, Show, x50 y50 h225 w300, leanclicker.wtf v1.0 ;gui name, and size
Gui, Font, S9, CWhite, Helvetica
Gui, Add, Text, x12 y140 w330 h30, randomisation:
Gui, Add, Button, x20 y160 w33 h30 gLegitRandomisationButton, legit  
Gui, Tab, Configs
Gui, Font, cWhite
Gui, Add, Text, x12 y35 h225 w300, SOON
Gui, Submit, NoHide
Return
 
Min:
{
Gui, Submit, NoHide
}
return
 
Max:
{
Gui, Submit, NoHide
}
return
 
MinBuild:
{
Gui, Submit, NoHide
}
return
 
MaxBuild:
{
Gui, Submit, NoHide
}
return
 
;Autoclicker code
P::Hotkey, *LButton, Toggle ;here you can change hotkey
*LButton::
Send,{LButton}
While GetKeyState("LButton", "P")
{
Send,{LButton}
Random, delay, %Min%, %Max%
Sleep %delay%
}
return
 
;RightClicker code
L::Hotkey, *RButton, Toggle ;here you can change hotkey
*RButton::
Send,{RButton}
While GetKeyState("RButton", "P")
{
Send,{RButton}
Random, delay, %MinBuild%, %MaxBuild%
Sleep %delay%
}
return
 
Dsc:
run https://discord.gg/kVGwzz3J2h ;reffer to my discord server 
return

Github:
run https://github.com/RoksanaKregiel/leanclickerwtf-ahk-source ;reffer to clicker github source
return

Blockhit:
LAlt:: RButton

LegitRandomisationButton:
MsgBox, loaded legit randomisation
; code it ur self


Insert::Suspend ; stops the script

GuiClose:

ExitApp
