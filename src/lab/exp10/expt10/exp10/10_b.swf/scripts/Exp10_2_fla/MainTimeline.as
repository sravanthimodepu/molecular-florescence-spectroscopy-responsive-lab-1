package Exp10_2_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import fl.controls.Slider;
   import flash.events.Event;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.events.MouseEvent;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      public var takeintocuvette_btn:SimpleButton;
      
      public var manual_mc:MovieClip;
      
      public var inst:TextField;
      
      public var scan2_mc:MovieClip;
      
      public var solution_btn:SimpleButton;
      
      public var pipette_mc:MovieClip;
      
      public var sysgraph_btn:SimpleButton;
      
      public var l22_mc:MovieClip;
      
      public var liqud_mc:MovieClip;
      
      public var lamp_mc:MovieClip;
      
      public var l2_mc:MovieClip;
      
      public var screen2:MovieClip;
      
      public var arrow_mc:MovieClip;
      
      public var graphdata_mc:MovieClip;
      
      public var p1:SimpleButton;
      
      public var lamp1_mc:MovieClip;
      
      public var data_mc:MovieClip;
      
      public var l1_mc:MovieClip;
      
      public var cuvettereturn_btn:SimpleButton;
      
      public var l11_mc:MovieClip;
      
      public var power1_mc:MovieClip;
      
      public var pipttet_btn:SimpleButton;
      
      public var dropsol_btn:SimpleButton;
      
      public var c1_mc:MovieClip;
      
      public var solutionflask_mc:MovieClip;
      
      public var moniter_mc:MovieClip;
      
      public var time_mc:MovieClip;
      
      public var man_mc:MovieClip;
      
      public var openlid_btn:SimpleButton;
      
      public var gocuvette_btn:SimpleButton;
      
      public var lid_mc:MovieClip;
      
      public var lidopen_mc:MovieClip;
      
      public var closelid_btn:SimpleButton;
      
      public var solvent:Slider;
      
      public var cuvette_btn:SimpleButton;
      
      public var arr_mc:MovieClip;
      
      public var switchValue:int;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25,28,this.frame29,48,this.frame49,84,this.frame85,135,this.frame136,146,this.frame147);
         this.__setProp_solvent_Scene1_Layer7_0();
      }
      
      public function solventchange(param1:Event) : *
      {
         this.switchValue = int(this.solvent.value);
         this.inst.htmlText = "To take a particular concentration solution, first click on the appropriate concentration on the concentration selection bar and then on the volumetric flask. For measurement, first start with the lowest concentration and then proceed from lower to higher concentrations.";
         switch(this.switchValue)
         {
            default:
               trace("one");
               new Tween(this.solutionflask_mc.solution_mc,"alpha",Strong.easeInOut,0,1,1,true);
               this.solution_btn.mouseEnabled = true;
               this.arr_mc.alpha = 1;
               break;
            case 2:
               trace("two");
               new Tween(this.solutionflask_mc.solution_mc,"alpha",Strong.easeInOut,0,1,1,true);
               this.solution_btn.mouseEnabled = true;
               this.arr_mc.alpha = 1;
               break;
            case 3:
               trace("three");
               new Tween(this.solutionflask_mc.solution_mc,"alpha",Strong.easeInOut,0,1,1,true);
               this.solution_btn.mouseEnabled = true;
               this.arr_mc.alpha = 1;
               break;
            case 4:
               trace("four");
               new Tween(this.solutionflask_mc.solution_mc,"alpha",Strong.easeInOut,0,1,1,true);
               this.solution_btn.mouseEnabled = true;
               this.arr_mc.alpha = 1;
         }
      }
      
      public function takingsolution(param1:MouseEvent) : *
      {
         this.gotoAndPlay("s1");
         this.solvent.enabled = false;
         this.inst.htmlText = "Take an all-side-transparent quartz cuvette of path length 1 cm ×1 cm for the fluorescence measurement.";
      }
      
      public function manoveref(param1:MouseEvent) : *
      {
         this.man_mc.gotoAndPlay(2);
      }
      
      public function manoutef(param1:MouseEvent) : *
      {
         this.man_mc.gotoAndPlay(16);
      }
      
      public function openmanual(param1:MouseEvent) : *
      {
         new Tween(this.manual_mc,"y",Strong.easeOut,830,342,1.5,true);
      }
      
      public function closemanual(param1:MouseEvent) : *
      {
         new Tween(this.manual_mc,"y",Strong.easeOut,342,830,1.5,true);
      }
      
      public function dataoveref(param1:MouseEvent) : *
      {
         this.data_mc.gotoAndPlay(2);
      }
      
      public function dataoutef(param1:MouseEvent) : *
      {
         this.data_mc.gotoAndPlay(16);
      }
      
      public function dataclick(param1:MouseEvent) : *
      {
         this.graphdata_mc.alpha = 1;
         this.graphdata_mc.gotoAndPlay(2);
      }
      
      public function dataclosed(param1:MouseEvent) : *
      {
         this.graphdata_mc.gotoAndPlay(41);
      }
      
      public function takecuvette(param1:MouseEvent) : *
      {
         this.c1_mc.gotoAndPlay(2);
         this.gotoAndStop("s3");
         this.inst.htmlText = "Click on the 5 mL capacity pipette to collect 3 mL of the experimental solution which will be transferred into the quartz cuvette. In real operation, one has to set the volume to 3 mL in the  pipette and an appropriate tip should be attached prior to dipping it in the solution.";
      }
      
      public function takepipette(param1:MouseEvent) : *
      {
         this.play();
         this.inst.htmlText = "Click on the pipette to draw the solution into it.";
      }
      
      public function takeintocuvette(param1:MouseEvent) : *
      {
         this.pipette_mc.gotoAndPlay(2);
         this.solutionflask_mc.solution_mc.gotoAndPlay(2);
         this.gocuvette_btn.mouseEnabled = true;
         this.takeintocuvette_btn.mouseEnabled = false;
         this.inst.htmlText = "Click on the pipette to take it out of the volumetric flask.";
      }
      
      public function gocuvette(param1:MouseEvent) : *
      {
         this.play();
         this.inst.htmlText = "Click on the pipette again to transfer the solution into the cuvette.";
      }
      
      public function dropsol(param1:MouseEvent) : *
      {
         this.pipette_mc.gotoAndPlay(16);
         this.play();
         this.inst.htmlText = "Turn on the spectrofluorimeter by clicking on the power button. In real operation, it takes approx. 30 min for initialization of the instrument.";
      }
      
      public function powerons(param1:MouseEvent) : *
      {
         this.openlid_btn.mouseEnabled = true;
         this.p1.mouseEnabled = false;
         this.time_mc.alpha = 1;
         this.time_mc.gotoAndPlay(2);
         this.time_mc.x = 473.55;
         this.power1_mc.gotoAndStop(2);
         this.lamp1_mc.gotoAndPlay(2);
         this.l11_mc.alpha = 1;
         this.l22_mc.alpha = 1;
         this.arrow_mc.x = 371.15;
         this.arrow_mc.y = 243.2;
         this.inst.htmlText = "For placing the sample in the instrument, open the lid of the sample chamber of the spectrofluorimeter by clicking on the lid.";
      }
      
      public function openlid(param1:MouseEvent) : *
      {
         this.lid_mc.alpha = 0;
         this.lidopen_mc.alpha = 1;
         this.openlid_btn.mouseEnabled = false;
         this.cuvettereturn_btn.mouseEnabled = true;
         this.arrow_mc.x = 772.15;
         this.arrow_mc.y = 305.15;
         this.inst.htmlText = "To place the cuvette in the sample holder of the instrument, click on the cuvette.";
      }
      
      public function cuvettereturn(param1:MouseEvent) : *
      {
         this.c1_mc.gotoAndPlay(36);
         this.cuvettereturn_btn.mouseEnabled = false;
         this.liqud_mc.alpha = 0;
         this.arrow_mc.x = 367.15;
         this.arrow_mc.y = 186.2;
         this.inst.htmlText = "Close the lid of the sample chamber by clicking on the lid.";
      }
      
      public function closelid3(param1:MouseEvent) : *
      {
         this.lid_mc.alpha = 1;
         this.lidopen_mc.alpha = 0;
         this.closelid_btn.mouseEnabled = false;
         this.sysgraph_btn.mouseEnabled = true;
         this.arrow_mc.x = 591.15;
         this.arrow_mc.y = 234.2;
         this.inst.htmlText = "Open the instrument set-up screen by clicking on the fluorescence icon on the computer monitor. ";
      }
      
      public function graphshow2(param1:MouseEvent) : *
      {
         this.play();
         this.inst.htmlText = "Select the Emission Scan Mode on the screen.<br>On the screen, enter the Excitation wavelength: 370 nm, Emission Start Wavelength: 380 nm and Emission End wavelength: 570 nm. One chooses the Excitation Slit(nm) and Emission Slit(nm) values (here 2.5 nm/2.5 nm) and the scan speed value (here \'medium\') also.";
      }
      
      public function scan2close(param1:MouseEvent) : *
      {
         this.scan2_mc.alpha = 0;
         this.scan2_mc.x = 1500;
         this.sysgraph_btn.mouseEnabled = true;
         this.inst.htmlText = "Click on \'Reset\' button to start over the measurements.";
      }
      
      public function showscreen2(param1:MouseEvent) : *
      {
         new Tween(this.screen2,"alpha",Strong.easeInOut,0,1,1,true);
         this.screen2.x = 463.55;
         this.sysgraph_btn.mouseEnabled = false;
         this.inst.htmlText = "Select the Emission Scan Mode on the screen.<br>On the screen, enter the Excitation wavelength: 370 nm, Emission Start Wavelength: 380 nm and Emission End wavelength: 570 nm. One chooses the Excitation Slit(nm) and Emission Slit(nm) values (here 2.5 nm/2.5 nm) and the scan speed value (here \'medium\') also.";
      }
      
      public function checkgraph() : *
      {
         if(this.solvent.value == 1)
         {
            this.scan2_mc.gotoAndStop(1);
         }
         else if(this.solvent.value == 2)
         {
            this.scan2_mc.gotoAndStop(2);
         }
         else if(this.solvent.value == 3)
         {
            this.scan2_mc.gotoAndStop(3);
         }
      }
      
      function __setProp_solvent_Scene1_Layer7_0() : *
      {
         try
         {
            this.solvent["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.solvent.direction = "horizontal";
         this.solvent.enabled = true;
         this.solvent.liveDragging = false;
         this.solvent.maximum = 3;
         this.solvent.minimum = 1;
         this.solvent.snapInterval = 0;
         this.solvent.tickInterval = 0;
         this.solvent.value = 0;
         this.solvent.visible = true;
         try
         {
            this.solvent["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function frame1() : *
      {
         stop();
         this.arr_mc.alpha = 0;
         this.solution_btn.mouseEnabled = false;
         this.lidopen_mc.alpha = 0;
         this.inst.htmlText = "Prepare three solutions with following concentrations of 9-methylanthracene in spectroscopic grade benzene: (i) 10^(-4) M; (ii) 10^(-2) M and (iii) 0.2 M. Here the solutions are shown on the concentration selection bar.";
         this.solvent.addEventListener(Event.CHANGE,this.solventchange);
         this.solution_btn.addEventListener(MouseEvent.CLICK,this.takingsolution);
         this.man_mc.buttonMode = true;
         this.man_mc.addEventListener(MouseEvent.MOUSE_OVER,this.manoveref);
         this.man_mc.addEventListener(MouseEvent.MOUSE_OUT,this.manoutef);
         this.man_mc.addEventListener(MouseEvent.CLICK,this.openmanual);
         this.manual_mc.close_btn.addEventListener(MouseEvent.CLICK,this.closemanual);
         this.data_mc.addEventListener(MouseEvent.MOUSE_OVER,this.dataoveref);
         this.data_mc.addEventListener(MouseEvent.MOUSE_OUT,this.dataoutef);
         this.data_mc.addEventListener(MouseEvent.CLICK,this.dataclick);
         this.graphdata_mc.close_btn.addEventListener(MouseEvent.CLICK,this.dataclosed);
      }
      
      function frame25() : *
      {
         stop();
         this.cuvette_btn.addEventListener(MouseEvent.CLICK,this.takecuvette);
      }
      
      function frame29() : *
      {
         stop();
         this.pipttet_btn.addEventListener(MouseEvent.CLICK,this.takepipette);
      }
      
      function frame49() : *
      {
         stop();
         this.gocuvette_btn.mouseEnabled = false;
         this.takeintocuvette_btn.addEventListener(MouseEvent.CLICK,this.takeintocuvette);
         this.gocuvette_btn.addEventListener(MouseEvent.CLICK,this.gocuvette);
      }
      
      function frame85() : *
      {
         stop();
         this.dropsol_btn.addEventListener(MouseEvent.CLICK,this.dropsol);
      }
      
      function frame136() : *
      {
         stop();
         this.openlid_btn.mouseEnabled = false;
         this.cuvettereturn_btn.mouseEnabled = false;
         this.closelid_btn.mouseEnabled = false;
         this.sysgraph_btn.mouseEnabled = false;
         this.lidopen_mc.alpha = 0;
         this.p1.addEventListener(MouseEvent.CLICK,this.powerons);
         this.openlid_btn.addEventListener(MouseEvent.CLICK,this.openlid);
         this.cuvettereturn_btn.addEventListener(MouseEvent.CLICK,this.cuvettereturn);
         this.closelid_btn.addEventListener(MouseEvent.CLICK,this.closelid3);
         this.sysgraph_btn.addEventListener(MouseEvent.CLICK,this.graphshow2);
      }
      
      function frame147() : *
      {
         stop();
         this.checkgraph();
         this.sysgraph_btn.mouseEnabled = false;
         this.scan2_mc.closed_btn.addEventListener(MouseEvent.CLICK,this.scan2close);
         this.sysgraph_btn.addEventListener(MouseEvent.CLICK,this.showscreen2);
      }
   }
}
