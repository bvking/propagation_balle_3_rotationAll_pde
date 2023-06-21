boolean doQ, doZ, doB; 
boolean propagationTrigged;
boolean doo=false;
boolean dol=false;
boolean doC=false;
//boolean doQ=false;
//boolean doZ=false;

String modeStartKeyToFollow, keyMode;
     
float phaseMapped [] =  new float  [networkSize]; 
float newPosFollowed  [] =  new float  [networkSize]; 
float phaseMappedFollow  [] =  new float  [networkSize]; 



void propagationBallRotationBis(){ // as addSignalOneAndTwoQuater() in NAOP 
modeStartKeyToFollow = " null ";


     textSize (50);
          text ("Undo followed Propagation with L " + key, -width-200, -height- 700 );

     text (" oldOscillatorChange " + oldOscillatorChange + " oscillatorChange " + oscillatorChange + " j " + nf (phaseKeptAtChange[oscillatorChange], 0, 2), -width, -height- 900+300 );
     text (" propagationTrigged " + propagationTrigged + " propagationSpeed " + propagationSpeed + " key " + key, -width, -height- 800+300  );
     text (" signal2  " +nf(signal[2], 0, 2) + " QpropWay " + doQ + " doZ " + doZ + " BlargerPhase " + doB , -width, -height- 700+300 );
     text (" lock " + dol + " oWay " + doo + " doC " + doC , -width, -height- 600+300 );
     text (" QpropWay " + doQ + " doZ " + doZ + " BlargerPhase " + doB , -width, -height- 500+300   );
     text (" oldSignalToSplit " + oldSplitTime + " splitTime " +  splitTime + " timeLFO " + timeLfo,  -width, -height- 400+300  );
     text (" oldSignalToSplit " + nf (oldSignalToSplit, 0, 2) + " signalToSplit " +     nf (signalToSplit, 0, 2) + " timeLFO " + timeLfo,  -width, -height );
     
  
 //  if (key=='q' || key=='b' || key=='z' || key=='#' || key=='o' || key=='l'  ) { // q == addsignal
     letter = key;   
//     }
     
  switch(letter) {
    case 'o': // way of rotation
    doo=!doo;
    key = '#';

    break;

    case 'c': 
    doC=!doC;
    key = '#';
    break;
 
    
    case 'l': // enable propagation or lock
      dol=true;
    key = '#';

    break;
    case 'L': // disable propagation
   dol=false;

    break;
    case 'q': // way of propagation
    doQ=true;
    doZ=false;
    break;
    case 'b': 
    doQ=false;
    doZ=false;
    doB=!doB;
    key = '#';
    break;

    

    case 'B': 
    doQ=false;
    doZ=false;
    doB=false;

    break;
    case 'z': // change way of propagation
    doZ=true;
    doQ=true;
    break;
    case '#': // change way of propagation
    
    break;
  //  doB=!doB;
    }
    
//   key = '#';
   
    
 
 // splitTimeScaleRotation(30.0); //  10.0= vitesse de propagation. On change de sens de ROTATION avec q et z.
 // splitTimeLfoScale();  // change de sens de PROPAGATION
 //  if (key == 'l' ) {
     

  
  
   if ( formerFormerKey == '#' || modeStartKeyToFollow == " null ") { // formerFormerKey == '#' || 
    
    println ( " modeStartKeyToFollow " + modeStartKeyToFollow);
        if (key == 'o' ) {
     //   signal[2]=- signal[2] ;
     for (int i = 0; i < networkSize-0; i+=1) { 
     //   newPosFollowed[i]=-newPosFollowed[i];
           }
           }
  

      for (int i = 0; i < networkSize-0; i+=1) { 
         newPosFollowed[i]=map (0.08, 0, 1, 0, TWO_PI); // signals to follow  
        //   newPosFollowed[i]=map (signal[2], 0, 1, 0, TWO_PI); // signals to follow
       phaseMapped[i] = newPosFollowed[i]+phaseMappedFollow[i]; // new signal is a composition 

      if (phaseMapped[i]<0){
      DataToDueCircularVirtualPosition[i]= int (map (phaseMapped[i], 0, -TWO_PI, numberOfStep, 0)); 
      phaseMapped[i]= map (DataToDueCircularVirtualPosition[i], numberOfStep, 0, 0, -TWO_PI);  
       }
       
      else {
    
      DataToDueCircularVirtualPosition[i]= (int) map (phaseMapped[i], 0, TWO_PI, 0, numberOfStep); 
      phaseMapped[i]= map (DataToDueCircularVirtualPosition[i], 0, numberOfStep, 0, TWO_PI);
       }


      newPosXaddSignal[i]=phaseMapped[i];
 
  }
  
 }
   // lockOscillatorToPositionFromPreviousProagedBall();
      //******** Lock last oscillator to the lastPhase

      if (  propagationTrigged==true && dol==true) {
      lockOscillatorToPositionFromPreviousProagedBall();
      for (int i = 0; i < networkSize-0; i+=1) { 
      phaseMappedFollow[i] = netPhaseBase[i];
      phaseMappedFollow[i] = phaseMappedFollow[i]%TWO_PI; 
      }
     }
    
 
 
   //   if (key != '#' ) {
      if (modeStartKeyToFollow == " null ") {
   //  phasePatternOriginal();
      phasePatternBase();

      for (int i = 0; i < networkSize-0; i+=1) {
  //  newPosFollowed[i]=netPhaseBase[i]; 
      phaseMappedFollow[i] = netPhaseBase[i];
    //  phaseMappedFollow[i] = phaseMappedFollow[i]%TWO_PI; 
       }
      }
   //  }


   propagationSpeed=50;
   splitTimeScaleRotation(propagationSpeed);
   propagation2wayRotationBis(); 
   //mapDataToMotor();

     
     
  //  

 
 formerFormerKey= formerKey;   
 formerKey=key;
 
 }
 
 void propagation2wayRotationBis() {   // FAIRE CONDITION QUAND SIGNAL NEGATIF fu style
  //    if (newPosXaddSignal[oscillatorChange]<0){ 
  //    for (int i = 0; i <  networkSize-0; i+=1) { 
  //   newPosXaddSignal[oscillatorChange]= map (dataMappedForMotor[oscillatorChange], numberOfStep, 0, -TWO_PI, 0);
  //  }
  //    }
   
  //  B true O true OK
  // B true O false OK
  //        B false O false NO

    //   phaseKeptAtChange[oscillatorChange]=newPosXaddSignal[oldOscillatorChange];
   
   if (doC==true && doo==false ){ // // fonctionne avec o = false
  //     LFO[oscillatorChange] = LFO[oldOscillatorChange]+QUARTER_PI*1/2 ;  // on ajoute 
//++  phaseKeptAtChange[oscillatorChange]=LFO[oscillatorChange]%TWO_PI;

 //***  phaseKeptAtChange[oscillatorChange]= newPosXaddSignal[oscillatorChange]%TWO_PI;
//***   phaseKeptAtChange[oscillatorChange]= phaseKeptAtChange[oscillatorChange]+(PI/(2*networkSize)-1);


      LFO[oscillatorChange] = newPosXaddSignal[oscillatorChange]%TWO_PI;
   //   LFO[oscillatorChange] = LFO[oldOscillatorChange] - (PI/(6*networkSize)-1);
    LFO[oscillatorChange] = LFO[oldOscillatorChange] ;

        if (LFO[oscillatorChange]<0){ 
      for (int i = 0; i <  networkSize-0; i+=1) { 

   //    LFO[oscillatorChange]= map (LFO[oscillatorChange], - TWO_PI, 0, 0, TWO_PI);
    }
      }

       dataMappedForMotor[oldOscillatorChange]= (int) map (LFO[oldOscillatorChange], 0, TWO_PI , 0, numberOfStep);  // 
       dataMappedForMotor[oscillatorChange]= (int) map (LFO[oscillatorChange], 0, TWO_PI , 0, numberOfStep);  // 
       
              
       println (" MAIN true phaseKeptAtChange[oscillatorChange] ", oscillatorChange, " " ,  LFO[oscillatorChange]);
       println (" MAIN true phaseKeptAtChange[oldOscillatorChange] ", oldOscillatorChange, " " ,  LFO[oldOscillatorChange]);

      newPosXaddSignal[oldOscillatorChange]= map (dataMappedForMotor[oldOscillatorChange], 0, numberOfStep, 0, TWO_PI);
      newPosXaddSignal[oscillatorChange]= map (dataMappedForMotor[oscillatorChange], 0, numberOfStep, 0, TWO_PI);
    
     }

      if (doC==true && doo==true && doB!=true ){ // // fonctionne avec o = false/ ajoute  ou retire )1 au compteur selon propa
  //     LFO[oscillatorChange] = LFO[oldOscillatorChange]+QUARTER_PI*1/2 ;  // on ajoute 
//++  phaseKeptAtChange[oscillatorChange]=LFO[oscillatorChange]%TWO_PI;

 //***  phaseKeptAtChange[oscillatorChange]= newPosXaddSignal[oscillatorChange]%TWO_PI;
//***   phaseKeptAtChange[oscillatorChange]= phaseKeptAtChange[oscillatorChange]+(PI/(2*networkSize)-1);


      LFO[oscillatorChange] = newPosXaddSignal[oscillatorChange]%TWO_PI;
      LFO[oscillatorChange] = LFO[oldOscillatorChange] + (PI/(3*networkSize)-1);
      text ( "  LFO[oscillatorChange] " + LFO[oscillatorChange], 900, 900 );
        if (LFO[oscillatorChange]<0){ 
    //  for (int i = 0; i <  networkSize-0; i+=1) { 

    //  LFO[oscillatorChange]= map (LFO[oscillatorChange], - TWO_PI, 0, 0, TWO_PI);
  //  }
      }

       dataMappedForMotor[oscillatorChange]= (int) map (LFO[oscillatorChange], 0, TWO_PI , 0, numberOfStep);  // 
       
      newPosXaddSignal[oldOscillatorChange]= map (dataMappedForMotor[oldOscillatorChange], 0, numberOfStep, 0, TWO_PI);
      newPosXaddSignal[oscillatorChange]= map (dataMappedForMotor[oscillatorChange], 0, numberOfStep, 0, TWO_PI);
    
     }






   if (doB!=true && doC!=true){ // && propagationTrigged==true
  //     LFO[oscillatorChange] = LFO[oldOscillatorChange]+QUARTER_PI*1/2 ;  // on ajoute 
//++  phaseKeptAtChange[oscillatorChange]=LFO[oscillatorChange]%TWO_PI;

 //***  phaseKeptAtChange[oscillatorChange]= newPosXaddSignal[oscillatorChange]%TWO_PI;
//***   phaseKeptAtChange[oscillatorChange]= phaseKeptAtChange[oscillatorChange]+(PI/(2*networkSize)-1);


      LFO[oscillatorChange] = newPosXaddSignal[oscillatorChange]%TWO_PI;
      LFO[oscillatorChange] = LFO[oscillatorChange] + (PI/(3*networkSize)-1);

        if (LFO[oscillatorChange]<0){ 
      for (int i = 0; i <  networkSize-0; i+=1) { 

       LFO[oscillatorChange]= map (LFO[oscillatorChange], - TWO_PI, 0, 0, TWO_PI);
    }
      }

       dataMappedForMotor[oscillatorChange]= (int) map (LFO[oscillatorChange], 0, TWO_PI , 0, numberOfStep);  // 
       
              
       println (" MAIN true phaseKeptAtChange[oscillatorChange] ", oscillatorChange, " " ,  phaseKeptAtChange[oscillatorChange]);
       println (" MAIN true phaseKeptAtChange[oldOscillatorChange] ", oldOscillatorChange, " " ,  phaseKeptAtChange[oldOscillatorChange]);

      newPosXaddSignal[oscillatorChange]= map (dataMappedForMotor[oscillatorChange], 0, numberOfStep, 0, TWO_PI);
    
     }





     
  
    if (doB==true && doC!=true){ 
      
         phaseKeptAtChange[oscillatorChange]= newPosXaddSignal[oscillatorChange]%TWO_PI;
         phaseKeptAtChange[oscillatorChange]= phaseKeptAtChange[oldOscillatorChange]+(PI/((2*networkSize)-1)); // on ajoute 
   //****    LFO[oscillatorChange] =LFO[oldOscillatorChange]+(PI/(2*networkSize-1)) ;  
  
    //   dataMappedForMotor[oscillatorChange]= (int) map (LFO[oscillatorChange], 0, TWO_PI , 0, numberOfStep);  // 
        dataMappedForMotor[oscillatorChange]= (int) map (phaseKeptAtChange[oscillatorChange], 0, TWO_PI , 0, numberOfStep);  // 
       
       println (" true phaseKeptAtChange[oscillatorChange] ", oscillatorChange, " " ,  phaseKeptAtChange[oldOscillatorChange]);
      
       
     //   newPosXaddSignal[oldOscillatorChange]= map (dataMappedForMotor[oldOscillatorChange], 0, numberOfStep, 0, TWO_PI); // GOOD

         newPosXaddSignal[oscillatorChange]= map (dataMappedForMotor[oscillatorChange], 0, numberOfStep, 0, TWO_PI);
     }

 



      for (int i = 0; i <  networkSize-0; i+=1) { 
   // net.phase[i]=newPosXaddSignal[i]; // to display to screen
   // net.phase[i]%=TWO_PI;
    }
 
///////////////////// below for the all program

 // mapDataToMotor();
 for (int k = 0; k < this.nbBalls; k++) 
    {    
        drawBallGeneral(k, newPosXaddSignal[k] );  
        print (" newPosXaddSignal[k] " + newPosXaddSignal[k]); 
    } 
 
  }


void  splitTimeLfoScale() {  // change de sens de propagagtion.   ATTENTION dans ce reglage le signalToSplit de propgation est UP continue de 0 à TWO_PI

    lfoPhase[1] = (frameCount / 10.0 * cos (1000 / 500.0)*-1)%TWO_PI;  // continue 0 to TWO_PI;
    lfoPhase[3] = map ((((cos  (frameCount / 30.0))*-1) %2), -1, 1, -TWO_PI, TWO_PI);  // sinusoidale lente
    lfoPhase[2] = map ((((cos  (frameCount / 50.0))*-1) %2), -1, 1, -TWO_PI, TWO_PI); // sinusoidale rapide
    
    println (" forme d'onde lfoPhase[1] ", lfoPhase[1], "lfoPhase[2] ", lfoPhase[2], "lfoPhase[3]= signalTosplit ", lfoPhase[3]); 

    oldSignalToSplit=signalToSplit;
    signalToSplit= lfoPhase[3];
 
  if (oldSignalToSplit> signalToSplit ) {
    key = 'q' ; // when signal goes down --> propagation FRONT SIDE
   timeLfo= map (signalToSplit, TWO_PI, -TWO_PI, 0, 1000);  //  if we have an oscillation as  lfoPhase[3]
    }
  else if (oldSignalToSplit< signalToSplit ) { // on est dans cette configuration avec  signalToSplit= lfoPhase[1]
   key = 'z';  //  when signal goes down --> propagation BEHIND SIDE 
//   key = 'q' ;  // propagation in on the same way
   timeLfo= map (signalToSplit, -TWO_PI, TWO_PI, 0, 1000);  // if we have an oscillation  lfoPhase[3]
 //**   timeLfo= map (signalToSplit, 0, TWO_PI, 0, 1000);  // if we have a continuois from 0 to TWO_PI 
 //   timeLfo= map (signalToSplit, 0, 1, 0, 1000); //  if we have a continuois from 0 to TWO_PI from an other software
 
   }

  int splitTimeLfo= int  (timeLfo%100);   // 100 is the size of the gate trigging the change of the ball  
   
      println ( " oldSignalToSplit " + oldSignalToSplit + " signalToSplit " + signalToSplit );
      print (" timeLfo "); print ( timeLfo );   print (" splittimeLfo "); println ( splitTimeLfo );


 if (doZ==false){  // case q
  if (oldSplitTimeLfo>splitTimeLfo){

      oldOscillatorChange=oscillatorChange;
      oscillatorChange=oscillatorChange+1;
   } 
      oscillatorChange=oscillatorChange%networkSize;
      
  if (oscillatorChange<=0) {
  //    oscillatorChange=0;
      oldOscillatorChange=networkSize-1;
   } 
  }
  
 if (doZ==true){ // case z
  if (  oldSplitTimeLfo>splitTimeLfo){

      oldOscillatorChange=oscillatorChange;
      oscillatorChange=oscillatorChange-1;
   } 
      if (oscillatorChange<=-1) {

      oldOscillatorChange=0;
      oscillatorChange=networkSize-1;
   }
  }  

  if ( oldOscillatorChange!=oscillatorChange )
  {
   oscillatorChanged=true;
  } 
   oldSplitTimeLfo = splitTimeLfo;
             
}

 void  splitTimeScaleRotation(float propagationSpeed) { 
   

         signal[2] = (0*PI + (frameCount / propagationSpeed) * cos (1000 / 500.0)*1); //%1

       if (doo=true) signal[2]=-signal[2]; 
      //   (if signal is sinusoidale we will see good propagation)
 
         
    if (doZ==false  ){  // case q && timeLfo>=0
  if (oldSplitTimeLfo>splitTimeLfo){
 
      oldOscillatorChange=oscillatorChange;
      oscillatorChange=oscillatorChange+1;
   } 

      oscillatorChange=oscillatorChange%networkSize;
     if (oscillatorChange<=0) {
    
         oscillatorChange=0;
         oldOscillatorChange=networkSize-1;
   } 
  }
  
//    if (doZ==false && timeLfo<=0  ){ // doZ==true  // doZ==false with signal sinusoidale
//   if (oldSplitTimeLfo<splitTimeLfo){ //  if (  oldSplitTimeLfo>splitTimeLfo){  //  if (oldSplitTimeLfo<splitTimeLfo)  signal sinusoidale
if (doZ==true   ){ 
  if (  oldSplitTimeLfo>splitTimeLfo){ 

       oldOscillatorChange=oscillatorChange;

      oscillatorChange=oscillatorChange-1;
   } 
      if (oscillatorChange<=-1) {

        oldOscillatorChange=0;

        oscillatorChange=networkSize-1;
   }
  }       
  
       println ( " ***************************************************    SPLIT TIME  timeLfoooooooooo " + " signal[2] " + signal[2] + " oldSplitTime " + oldSplitTime + " splitTime " + splitTime );

   timeLfo = ((int ) map (signal[2], 0, 1, 0, 1000)); // linear  pattern if signal [2] is linear
 
       println ( " ***************************************************    SPLIT TIME  timeLfoooooooooo " + " timeLfo   " + timeLfo );
        text (" oldSignalToSplit " + oldSplitTimeLfo + " splitTime " +   splitTimeLfo + " timeLFO " + timeLfo,  -width-200, +height );

   oldSplitTimeLfo=splitTimeLfo;
   splitTimeLfo= int  (timeLfo%100);    // the time is splitted at each %100. That mean ten time from the beginning to the end of signal[2]. from 0 to 1.
   
}
