int propagationLevel;
int oscillatorBlocked;

boolean circularMov;

int ActualVirtualPosition[] = new int [networkSize];
int ActualVirtualPositionFromOtherMode[] = new int [networkSize];

int VirtualPosition[] = new int [networkSize];

float  OldFrequency[]= new float [networkSize];

float averagePhase;

float netPhaseBase [] = new float [networkSize];
float netOldPhaseBase [] = new float [networkSize];

int oldMemoryi, memoryi;

int k,d;
char formerSartKey,formerKeyMetro;

void phasePattern() { // need standard mode to be trigged
  //************************************ DONT TOUCH
    for (int i = 0; i < (networkSize); i++) { 
   if  (   key == 'J')  {
 // ActualVirtualPosition[i]=ActualVirtualPosition[i]+1600;
  }
  }

 if  (  keyMode == " phasePattern "  ) {
//  splitIncomingSignal();
//   text ( " oscillatorChangingPropagation " + oscillatorChangingPropagation, 200, 200 );
  if ( propagationLevel==1) {
 // key = 'f';
   }
   if ( propagationLevel==2) {
  //key = 'd';
     }
  }

//  if  (   formerKeyMetro != 'c') {  // VERY IMPORTANT with CASE c
 if  (   keyMode != " truc "  ) {
      if  (   keyMode != " truc " ) {

    //     splitIncomingSignal();
         /*
         if (oscillatorChangingPropagation==true)  {key = 'f';}

         if (oscillatorChangingPropagation==false) {key = 'd';}
        */
    //     text ( " oscillatorChangingPropagation " + oscillatorChangingPropagation, 200, 200 );
      
  for (int i = 0; i < (networkSize); i++) { 
    {
// OldFrequency[i]=  net.naturalFrequency[i];  //************************************ SET LAST FREQUENCIES as OLD FREQUENCIES
    }
  }
  if  (   formerSartKey!= 'J')  
  if (key == 'W') { // follow mode. What is w?  (formerKey=='w')
  //  formerW();
    key ='#';
    //  pendular=5;
  }
                                                                                                                                                                                                                                                                                                                                                                                                                          

  //********** ********** ********** ********** ********** ********** ********** INCREASE FREQUENCIES in $ mode PENDULAR PATTERN
 //********** ********** ********** ********** ********** ********** ********** TRIG PATTERN SHIFTING IN KEYREASED


  if (keyCode == RIGHT) {  
    println( " pendularPattern right DECREASE phase shifting   witch formerStartKey ")  ; // Incremente together without changing phases   
    if ((formerSartKey == 'X' || formerSartKey == 'x' || formerSartKey == 'W' || formerSartKey == 'w' || formerKeyMetro  == 'J')) {
      k--;

      if (k<-8) { 
        k=8;
      }    
      println ("k= shiftingPhaseRatio ");
      println (k);
      keyCode = SHIFT; // to trig only once
    }
  }
  if (keyCode == LEFT) { 
    println("pendularPattern left INCREASE phase shifting"); // Incremente together without changing phases  
    if ((formerSartKey == 'X' || formerSartKey == 'x' || formerSartKey == 'W' || formerSartKey == 'w' || formerKeyMetro == 'J')) {
      k++;
      k=k%8;
    } else 
    k++;
    k=k%10;
    if (k>8) { 
      k=-8;
    }    
    println ("k= shiftingPhaseRatio ");
    println (k);
    keyCode = SHIFT; // to trig only once
  } 


  if (key == '1') { 
    println("Set Frequencies to 1+ harmonic distance with maxim different between them "); // boost l'effet du case é 
    for (int i = 0; i < networkSize; i++) {
      net.naturalFrequency[i] =    1.2-((i+0)*(1.0*0.1));
      
    }
  }
  if (key == '&') {
    println ("Opoosite of 1");
    for (int i = 0; i < networkSize; i++) {
      net.naturalFrequency[i]= ((i+1)*0.10);   // equivalent à     net.naturalFrequency[i] =1.2- (((networkSize-1)-i)*0.1 );
      
    }
  } 
  
   else if (key == '2') { 
    println("2$ Set Frequencies to 2+ harmonic distance from F0 "); 
    for (int i = 0; i < networkSize-0; i++) {

      //       net.naturalFrequency[i] =    2.4-((i+0)*(1.0*0.2)); //   
      net.naturalFrequency[i]+=1.2-((i+0)*(1.0*0.1)); //F11 not affected if (i+1)
      // net.naturalFrequency[i]=(i+1)*0.24;  
      
    }
  } 
  if (key == 'é') { // e$  éà dans pendularpattern e$  Shift frequencies one by one.  //  0 to 9,  1 to 8, 2 to 7.....9 to 0 

    //    if ( net.naturalFrequency[11]>net.naturalFrequency[0]){

    println (" Shift frequencies one by one 0 <-- 11. ");

    net.naturalFrequency[2]= OldFrequency[(networkSize-1)]; 

    for (int i = 2; i < (networkSize-1); i++) {
      print (i+1); 

      println ((networkSize+1)-(i+1));
      net.naturalFrequency[i+1]= OldFrequency[(networkSize+1)-(i+1)];
    }

    //}
  } else if (key == '3') {  
    println(" Set Frequencies to 3 + harmonic distance ");// boost l'effet 1  
    for (int i = 0; i < networkSize; i++) {  
      net.naturalFrequency[i]  +=  OldFrequency[i]/2;
      //    net.naturalFrequency[i]= 3.0-((i+0)*(3.0*0.1));
      // net.naturalFrequency[i]= 2.4-((i+0)*(2.4*0.1));

      
    }
  } else if (key == '4') {  
    println(" Set Frequencies to 4 + harmonic distance from F0 "); 
    for (int i = 0; i < networkSize; i++) { 
      //   net.naturalFrequency[i]=(i+1)*(0.30*1); 
      //  net.naturalFrequency[i]=(i+1)*(0.24*1); 
      net.naturalFrequency[i]+=(i+1)*(0.24*1); 
      
    }
  } else if (key == '5') {  
    println(" 5 : Minus frequency by F0 in CCW "); // good with 1 and 3
    for (int i = 0; i < networkSize; i++) {  
      // net.naturalFrequency[i] -=2.0-((i+0)*(2.0*0.1));
      net.naturalFrequency[i] -=1.0-((i+0)*(1.0*0.1));

      //**************** I have to try to be proportionnal with frequencies in case 1, 2, 3..

      
    }
  } else if (key == '6') {  
    println(" 6 : Minus frequency by F9 in CCW"); // the bottom turns the most quickly on the CW way // good with 1 and 3
    for (int i = 0; i < networkSize; i++) { 

      //      net.naturalFrequency[i]-=(i+1)*0.20; 
      net.naturalFrequency[i]-=(i+1)*0.10; 
      
    }
  } else if (key == '7') {  
    println(" 7 : Add frequency from F0(the front one) in CCW "); 
    for (int i = 0; i < networkSize; i++) { 
      //          net.naturalFrequency[i]+=2.0-((i+0)*(2.0*0.1));  
      net.naturalFrequency[i]+=1.0-((i+0)*(1.0*0.1));  
      
    }
  } else if (key == '8') {  
    println(" 8:  Add frequency from F0(the front one) in CW "); 
    for (int i = 0; i < networkSize; i++) {
      //     
      net.naturalFrequency[i]+=(i+1)*0.10;  
      
    }
  } else if (key == '°') {  
    println(" 8:  Add frequency from F0(the front one) in CW "); 
    for (int i = 0; i < networkSize; i++) {    
      net.naturalFrequency[i] =0;  
      
    }
  }
  if (key == 'Q') { //Q$   
    println ("F1, F3, F5.. are multipied 2");
    for (int i = 0; i < (networkSize); i++) { 
      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int impair = 0;
      int impairmodulo;
      impairmodulo = (i+impair)%2;
      print ("impairmodulo "); 
      println (impairmodulo);
      if (impairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]*2;
        
      }
    }
  } else if (key == 'q') {//q$    println ("F1, F3, F5.. are divided /2");
    for (int i = 0; i < (networkSize); i++) { 
      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int impair = 0;
      int impairmodulo;
      impairmodulo = (i+impair)%2;
      print ("impairmodulo "); 
      println (impairmodulo);
      if (impairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]/2;
        
      }
    }
  }

  if (key == 'N') { //N$   println ("F1, F3, F5.. are divided /2");
    println ("FO, F2, F5.. are multipied 2");
    for (int i = 0; i < (networkSize); i++) { 
      //net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 1;
      int pairmodulo;
      pairmodulo = (i+1)%2;
      print ("pairmodulo "); 
      println (pairmodulo);
      if (pairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]*2;
         
        key='#';
      }
    }
  }
  if (key == 'n') {//N$    println ("F1, F3, F5.. are divided /2");
    println ("FO, F2, F5.. are divided 2");
    for (int i = 0; i < (networkSize); i++) { 
      int pair = 1;
      int pairmodulo;
      pairmodulo = (i+1)%2;
      print ("pairmodulo "); 
      println (pairmodulo);
      if (pairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]/2;
        
        key='#';
      }
    }
  }
  /*
        if (key == 'T') {  print ("EXPERIMENTAL T$"); 
   float delaPhase    = map ((float (mouseY)/width*1), 0, 1, 0, QUARTER_PI ); 
   //*********
   for(int i = 0; i < (networkSize); i++) { 
   if ( abs (net.naturalFrequency[2]) > abs (net.naturalFrequency[networkSize-1])){
   net.naturalFrequency[i]= net.naturalFrequency[2];
   
   }
   else net.naturalFrequency[i]= net.naturalFrequency[networkSize-1];
     
   }
   }
   */
  if (key == 'T') {  
    print ("EXPERIMENTAL T$"); 
    for (int i = 0; i < (networkSize-1); i++) { 
      if ( (abs (net.naturalFrequency[i]) < abs (net.naturalFrequency[i+1])) // || 
        )
        net.naturalFrequency[i]=net.naturalFrequency[i+1];
    }
    if ( (abs (net.naturalFrequency[networkSize-1]) < abs (net.naturalFrequency[networkSize-1]))
      )
      net.naturalFrequency[networkSize-1]=net.naturalFrequency[0];
  }   

  if (key=='t') {  
    print ("EXPERIMENTAL t$");

    float delaPhase    = map ((float (mouseY)/width*1), 0, 1, 0, QUARTER_PI );                
    for (int i = 0; i < (networkSize-0); i++) {          
      {
        net.phase[i]= averagePhase;  
        //    net.phase[i]= net.phase[i]%PI/2; 
        net.phase[i]= net.phase[i]%TWO_PI;
      } 
      
    }
  }

  if (key == 'i') { 

  
    if (memoryi>=0) {
    oldMemoryi=memoryi;
    memoryi=(memoryi-1);
    }
      
  if ( memoryi<=-1) {
      memoryi=networkSize-1;
      oldMemoryi=0;
    println (" your herreeeeeee iiiiiiiiiiiii ");
    text (" your herreeeeeee iiiiiiiiiiiii ", 200, 200);


   }

        for (int i = 1; i < (networkSize-0); i++) {  

      net.phase[i-1]= net.oldPhase[i];
      netPhaseBase[i-1]= net.oldPhase[i];
      net.naturalFrequency[i-1]= net.naturalFrequency[i];
  //    net.phase[i]= net.phase[i+1];// net.oldPhase[i] keep phase at    
  //    netPhaseBase[i]= netPhaseBase[i+1];// net.oldPhase[i] keep phase at    
  //    net.naturalFrequency[i]= net.naturalFrequency[i+1];
    }

    net.phase[networkSize-1]=  net.oldPhase[0];
    netPhaseBase[networkSize-1]=  net.oldPhase[0];
    net.naturalFrequency[networkSize-1]= OldFrequency[0];
   
  }

  text ( " memoryi " +  memoryi + " oldMemoryi " + oldMemoryi, 800, 400)  ;



  if (key == 'u'  ) { 
    println ("U$=85  Shift frequencies <- one by one by keeping last position switched"); // && circularMov == false
    oldMemoryi=memoryi;
    memoryi=(memoryi+1)%networkSize;

    if ( memoryi<=0) {
      memoryi=0;
    }

    for (int i = 1; i < (networkSize-1); i++) {
      net.phase[i+1]= net.oldPhase[i];// net.oldPhase[i] keep phase at 0
      netPhaseBase[i+1]= net.oldPhase[i];// net.oldPhase[i] keep phase at 0
      net.naturalFrequency[i+1]= OldFrequency[i];
      netPhaseBase[i]= net.oldPhase[i-1];// // useless
      net.naturalFrequency[i]= OldFrequency[i-1]; // useless

      
    }
    netPhaseBase[0]=  netOldPhaseBase[networkSize-1];
    net.naturalFrequency[0]= OldFrequency[networkSize-1];
    netPhaseBase[networkSize-1]=  netOldPhaseBase[networkSize-1-1]; // useless
    net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1-1];// // useless
  } 

  if (key == 'U' && formerKeyMetro == '<') { 

    println ("U$<  add phase from the previous oscillator"); // && circularMov == false
    print (" U$< oldActualVirtualPosition2 ");


    oldMemoryi=memoryi;
    memoryi=(memoryi+1)%networkSize;

    if ( memoryi<=0) {
      memoryi=0;
    }
    for (int i = 0; i < (networkSize-1); i++) {

      netPhaseBase[i]=  netOldPhaseBase[i+1];
      net.naturalFrequency[i+1]= net.naturalFrequency[i];
      //**   net.naturalFrequency[2]= OldFrequency[networkSize-1];
      //  VirtualPosition[i]=VirtualPosition[i+1];
      ActualVirtualPosition[i]=VirtualPosition[i];
      // ActualVirtualPosition[i+1]= ActualVirtualPosition[i+1]+1600;
      //  

      
    }

    //   ActualVirtualPosition[2]= ActualVirtualPosition[networkSize-1];
    //   net.naturalFrequency[2]= net.naturalFrequency[networkSize-1];

    netPhaseBase[0]=  netOldPhaseBase[networkSize-1];
    net.naturalFrequency[0]= OldFrequency[networkSize-1];
    //  VirtualPosition[2]=VirtualPosition[networkSize-1];
    ActualVirtualPosition[0]=VirtualPosition[0];
    // netPhaseBase[networkSize-1]=  net.oldPhase[networkSize-1-1]; // useless

    // net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1-1];// // useless
  } 

  if (key == 'J') { 
    println ("J$  Shift frequencies -> one by one by keeping last position switched and divide /2");// based on i
    for (int i = 0; i < (networkSize-0); i++) {    

      net.phase[i]+= QUARTER_PI/(10);
      
    }
  }  

  if (key == 'K') { //K$ invisible
    println ("I$ Shift frequencies -> one by one by keeping last position switched and divide /2");// based on i
    for (int i = 0; i < (networkSize-0); i++) {    

      //     net.phase[i]-= QUARTER_PI/(10);
          net.phase[i]=net.phase[i]-QUARTER_PI/4;
       // net.phase[i]=net.phase[i]-QUARTERK_PI;
     // ActualVirtualPosition[i]+=0;  

      /*
        ActualVirtualPosition[i]=ActualVirtualPosition[i]+numberOfStep/3*i;
       ActualVirtualPosition[i]=ActualVirtualPosition[i]%numberOfStep;
       ActualVirtualPosition[i]+=ActualVirtualPosition[i];
       
       //*****
       
       ActualVirtualPosition[i]=ActualVirtualPosition[i]+numberOfStep/3*i;// less conventional than numberOfStep/6*i
       ActualVirtualPosition[i]+=ActualVirtualPosition[i]%numberOfStep;
       ActualVirtualPosition[i]=ActualVirtualPosition[i]%numberOfStep*5;
       */

    //  ActualVirtualPosition[i]=ActualVirtualPosition[i]+numberOfStep/8;

      
    }
  } 


  if (key == 'L') { 
    println ("L$  Shift frequencies -> one by one by keeping last position switched and divide /2");// based on i
    for (int i = 0; i < (networkSize-0); i++) {    
      //   net.phase[i]+= PI/(20+i);
      //    net.phase[i]+= PI/(i+1)/10; // good
      //  automatiseWithNote();
      
    }
  }    



  if (key == 'l') { 
    println ("l$  Shift frequencies <- one by one by keeping last position switched and multipied *2"); // based on u || key == 'L'

    // autoNote1();
    for (int i = 0; i < (networkSize-0); i++) { 
      //   net.phase[i]+= PI/(20+(networkSize-1-i));
      //   net.phase[i]+= PI/(networkSize-0-i)/10; // good
      //   automatiseWithNote();
    }
  }     

  if (key == 'c') { 
    println ("c$  Shift frequencies <- one by one by keeping last position switched and multipied *2"); // based on i$ || key == 'L'
    // net.shiftFrequencies(1);  net.shiftPhases(-1);
    formerKey = 'c';
  }
/* 
  if (key == 'X') { //trigx
    println (" Shift phase and frequencies  as a upstairx, based on x RECORD interphase when x Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]= net.phase[memoryi];

    interPhaseCircular[memoryi]= net.phase[memoryi];
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='X'; // to trig directly, before the next frame
  } 
  if (key == 'x') { //trigx
    println (" Shift phase and frequencies  as a DOWNSTAIRx, based on w RECORD interphase when w Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]= net.phase[memoryi];

    interPhaseCircular[memoryi]= net.phase[memoryi];
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='x'; // to trig directly, before the next frame
  } 
  if (key == 'W') { //trigW
    println (" Shift phase and frequencies  as a upstairW, based on x RECORD interphase when x Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]=  (net.phase[memoryi]);

    interPhaseCircular[memoryi]=  (net.phase[memoryi]);
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='W'; // to trig directly, before the next frame
  } 
  if (key == 'w' ) { //trigw   || key== 'O'
    println (" Shift phase and frequencies  as a DOWNSTAIRw, based on w RECORD interphase when w Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]=  (net.phase[memoryi]);

    interPhaseCircular[memoryi]= abs (net.phase[memoryi]);
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='w'; // to trig directly, before the next frame
  } 

*/
  if (key == 'v') { //TRIGGERV
    println ("v$  Shift OSCILLATOR WHEN POSITION MATCH   "); // based on i$ || key == 'L'
    formerKey='v';
    ///    formerKeyv();
  } 

  if (key == 'V'  ) { //&& keyCode== SHIFT
    println ("V$  Shift frequencies <- Two by one by keeping last position switched and multipied *2"); // based on i$ ||
    formerKey = 'V';
    //    formerKeyv();
  } 
  /*
    if (key == 'x') { 
   println ("x$  FOLLOW OSCILLATOR 11"); // based on  ||
   //if ( formerKey == 'l') { println ("L$  Shift frequencies <- one by one by keeping last position switched and multipied *2"); // based on u || key == 'L'
   formerKey = 'x';
   //    formerKeyL();
   } 
   */

  if (key == 'i') { 
    println ("= c$+I$  Shift frequencies -> one by one by keeping last position switched");
    formerKey = 'i';
  }  

  //**************************************************PLAY WITH PHASES

  if (key == 'k') { //  Shift frequencies one by one.  //  2 to 11,  3 to 10, 4 to 9.....11 to 2 

    println (" MIROR ? k$ Shift phase one by one 9 <-- 0. ");

    for (int i = (networkSize-1); i >= 0; i--) {
      ActualVirtualPositionFromOtherMode[i]= ActualVirtualPositionFromOtherMode[i]+800;



     // netPhaseBase[i]=netOldPhaseBase[(networkSize+1)-i];
     // net.naturalFrequency[i]=OldFrequency[(networkSize+1)-i];
    }   

   // netPhaseBase[0]=netOldPhaseBase[(networkSize-1)];
   //  net.naturalFrequency[0]=OldFrequency[(networkSize-1)];
    
  }
    if (key == 'A') { //A$  Shift frequencies one by one. 
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -4.34, 4.34); 
    for (int i = 0; i < networkSize; i++) {
      net.naturalFrequency[i]=OldFrequency[i]; 
      
    }
    memoryi=0;
    net.naturalFrequency[memoryi]= speeed;//4.68/2; // 124 bpm
  }

  if (key == 'a') { //A$  Shift frequencies one by one. 
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -4.34, 4.34); 
    for (int i = 0; i < networkSize; i++) {    
      net.naturalFrequency[i]=OldFrequency[i]; 
      
    }
    memoryi=0;
    net.naturalFrequency[0]= speeed;//4.68/2; // 124 bpm  4=108 bpm

  }


  if (key == 'Z') { 
    println (" Z$  Divide frequencies F11 by 12/2, F9 by 10/2 and, F7 by 8/2 so on. ");// fonctionne si F11=X et les autres vont à la meme vitesse
    // " Z$  Divide frequencies F1 by 12/2, F3 by 10/2 and, F5 by 8/2, F7 by 6/2, F9 by 4/2, F11 by 2/2 so on. ");// fonctionne si F11=X et les autres vont à la meme vitesse
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -2, 2);

    //    net.naturalFrequency[i]= OldFrequency[networkSize-1]; 

    net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1]; 
    //    net.naturalFrequency[networkSize-1]= 4;

    //    net.naturalFrequency[networkSize-3]= OldFrequency[networkSize-1]/2; 

    // affecting only F1, F3...
    for (int i = 0; i < (networkSize); i++) { 
      //    net.naturalFrequency[i]=  net.naturalFrequency[networkSize-1];

      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 0; // impair

      int pairmodulo;
      pairmodulo = (i+pair)%2;
      //     print ("pairmodulo "); println (pairmodulo);
      if (pairmodulo==1) {
        //    if (i%1==0){
        // net.naturalFrequency[i]=  net.naturalFrequency[networkSize-1]/(i+1); // du plus haut au plus bas
        // net.naturalFrequency[networkSize-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0);
        // " Z$  Divide frequencies F1 by 12/2, F3 by 10/2 and, F5 by 8/2, F7 by 6/2, F9 by 4/2, F11 by 2/2 so on. ");// fonctionne si F11=X et les autres vont à la meme vitesse
        //    divideFrequency[networkSize-i] = net.naturalFrequency[networkSize-1]/((i+1)/2.0);
        //   divideFrequency[networkSize-i] = net.naturalFrequency[networkSize-1]/((i+1)/(8.0/12.0));


        //      net.naturalFrequency[networkSize-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0);

        //*********************
        //        divideFrequency[networkSize-i] = net.naturalFrequency[networkSize-1]/((i+1)/(12/8.0));
        //      net.naturalFrequency[networkSize-i]=  divideFrequency [networkSize-i];

        print(" ");  
        print (i); 
        print ("  Oscillator pair : "); 
        print (networkSize-i-1); 
        print (" affected by the division: "); 
        print  ((i+1)/(12/8.0)); // Oscillator 0 when i=11 Oscillator 10 when i = 1;
        //      printSummary(networkSize-i);
      }
    }
    println (" ");
    // affecting only F0, F2.. divied with 7,6.. and F10 divided with 2 

    for (int i = 0; i < (networkSize); i++) { 
      //net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 1;
      int pairmodulo;
      pairmodulo = (i+1)%2;
      //     print ("pairmodulo "); println (pairmodulo);
      if (pairmodulo==1) {
        //     net.naturalFrequency[networkSize-0-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0); // (multipild F11 of 2)

        //       net.naturalFrequency[networkSize-i-2]= net.naturalFrequency[networkSize-1]/((i+4)/2.0); // (multipild F11 of 2) bug 

        //*********
        //          divideFrequency[networkSize-i-1] = net.naturalFrequency[networkSize-1]/((i+0.75)/(12/8.0));
        //           net.naturalFrequency[networkSize-i-1]=  divideFrequency [networkSize-i-1];

        //          print(" ");  print (i); print ("Oscillator impair : "); print (networkSize-i-1); print ("  affected by the division: "); println ((i+0.75)/(12/8.0));  //Oscillator 1 it's i=10  Oscillator 11 it's i= 0
        //        printSummary(networkSize-i-1);
        //       
      }
    }
  }
  if (key == 'z') {  
    println ("//z$  Shift frequencies one by one") ;
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -2, 2);
    net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1]/1; 

    for (int i = 2; i < (networkSize-0); i++) { 
      //    for (int i = networkSize-2; i > -1; i--) { 
      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 0;
      if (pair==(i+1)%2) {
        //    if (i%1==0){
        //    net.naturalFrequency[i]=  net.naturalFrequency[networkSize-1]/(i+1);
        //  net.naturalFrequency[networkSize-0-i]= net.naturalFrequency[networkSize-1]/((((i/2)*1)));
        net.naturalFrequency[networkSize-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0);
        print (i);
        
      }
    }
  }
  /*
        if (key == 'a') { // a$
   print("a");  println ("Incremente Same offset of phases 12hit");    
   for (int i = 0; i < networkSize; i++) { 
   net.phase[i] += (TWO_PI/(networkSize/1))*(i+1); // TRES BIEN 
   net.phase[i]=  net.phase[i]%TWO_PI; //
   
   }
   } 
   */
   
 //} //ENDFORMERSARTKEYJ
 
  if (key == 'e') { 
    println ("Incremente positions  12/3 hit");  //e$
    for (int i = 0; i < networkSize; i++) {    
      //    net.phase[i] -= (QUARTER_PI/(networkSize-0))*(i+1); // TRES BIEN

      net.phase[i] = net.phase[i] + ((TWO_PI/(networkSize/1))*(i+1)); // TRES BIEN  ==     net.phase[i] += (i+1)*TWO_PI/4; //4hit  ==   net.phase[i] +=  (i+1)*3.5*PI; 
    //  net.phase[i] = net.phase[i] % TWO_PI; // TRES BIEN

      
      key ='#'; keyReleased();
    }
  }  



  if (key == 'E') {   
    print ("Add 2PI/3: PENDULAR $ 3 HIT TO COME BACK" );  print (" Add 2PI/3: PENDULAR $ 3 HIT TO COME BACK" ); //e$
    print ("FormerkeyMetro"); 
    print (char(formerKeyMetro));
    print ("keyNow"); 
    println (char(key));
    for (int i = 0; i < networkSize; i++) {
      //  netOldPhaseBase[i] += (i+1)*4%TWO_PI; 
      //   netPhaseBase[i] +=  (i+1)*3*PI;  // one on two move an offset of PI
      
     // net.phase[i] += (i+1)*TWO_PI/3; //3hit  <=>   net.phase[i] += (i+1)*TWO_PI/1.5; 
     
        net.phase[i] = net.phase[i] + (i+1)*TWO_PI/3; //3hit  <=>   net.phase[i] += (i+1)*TWO_PI/1.5; 
     

    //  net.phase[i]=  net.phase[i]%TWO_PI;
        key ='#';// keyReleased();
    }
  }



  /*
     if (key == 'w')  {   println ("Add PI/3 : 12HIT : Clock Wise"); //w$
   
   for (int i = 0; i < networkSize; i++) {
   
   net.phase[networkSize-1-i] -= (i*TWO_PI/10)%PI/3;    //PAS TOUCHER 
   net.phase[i]=  net.phase[i]%TWO_PI;
   }     
   }
   */
  if (key == 'r') {
    println ("Soubstract PI/6 PENDULAR $"); // R$ +1.5*HALF_PI; 


    for (int i = 0; i < networkSize; i++) {
      //   net.phase[i] += (i+1) *(TWO_PI/12); // 12 hit


      //    net.phase[i] +=  -(i+2)%PI/6; // mieux
    
     // net.phase[i] += (i*TWO_PI/5)%PI/(networkSize); // pas en mode circular ? 
     net.phase[i] += (i*TWO_PI/networkSize)%PI/(networkSize*3); // pas en mode circular ? 
     //net.phase[i] += (i*TWO_PI/10/5); //  en mode circular?

      //    net.phase[i] -=  +(i+1)%PI/6;

     // net.phase[i]=  net.phase[i]%(TWO_PI/1) ; // bien en pendulaire?
 
      
    }
  }


  if (key == 'R') {
    println ("Add PI/6 PENDULAR $ without move 11, 8, 5"); // R$
    for (int i = 0; i < networkSize; i++) {
      //   net.phase[i] += (i+1) *(TWO_PI/12); // 12 hit
      
      //   net.phase[networkSize-1-i] += (i*TWO_PI/3)%PI/11;    //PAS TOUCHER
   //   net.phase[i] -= (i*TWO_PI/5)%PI/5;
          net.phase[i] -= (i*TWO_PI/networkSize)%PI/(networkSize*3); // pas en mode circular ? 


      //   net.phase[networkSize-1-i] += (i*TWO_PI/3)%PI/10;    //PAS TOUCHER
      //    net.phase[networkSize-1-i] += (i*TWO_PI/3)%TWO_PI/10;    //PAS TOUCHER // ne va pas avec P
      //     net.phase[networkSize-1-i] += (i*TWO_PI/3)%TWO_PI/11;    //PAS TOUCHER


      //   net.phase[i] += (1*TWO_PI/(11-i+1))%PI/6;
      //   net.phase[i]  += ((PI/(networkSize/6))*(i+1))%PI/3; // OK
      //   net.phase[i]  +=  net.phase[i] +(PI/((networkSize-i/12))*(i+1))%PI/12; // OK


      netPhaseBase[i]=  netPhaseBase[i]%TWO_PI;
      //   netOldPhaseBase[i]=  netPhaseBase[i];
      
    }
    // }
  }

   else if (key == 's') {
    println(" s$s: Reduce the gap between phases by f0 "); //S$
    for (int i = 0; i < networkSize-0; i++) {

      //  net.phase[i] -=(9-i)*0.05;
      //   net.phase[i] -=(networkSize-1-i)*0.05; // oscillator 11 do not move
      net.phase[i] -= (networkSize-1- oscillatorBlocked-i)*0.05; // if oscillatorBlocked=0; net.phase[5] doesn't move
    //  net.phase[i]=  net.phase[i]%TWO_PI;

      
    }
  } else if (key == 'S') { 
    println(" S$: Reduce the gap between phases by f0  ");    
    for (int i = 0; i < networkSize; i++) {      
      //   net.phase[i] -=(networkSize-1-i)*0.1;
      //   net.phase[i]=  net.phase[i]%TWO_PI;
         net.phase[i] += (networkSize- oscillatorBlocked-i)*0.01;
      //***    net.phase[i]=  net.phase[i]%TWO_PI;
      
    }
  }

   else if (key == 'g') { 
    println(" Decrease the gap between phases of 5% from the oscillator " + oscillatorBlocked + " called with the same number as memoryi " + memoryi   );  
    for (int i = 0; i < networkSize; i++) {
      //       net.phase[i] -=i*0.01;
      //         net.phase[i] -=i*0.05;

      net.phase[i] -=      (oscillatorBlocked+i)*0.05;       //if oscillatorBlocked=0; net.phase[0] doesn't move
      net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      
    }
  }
   else if (key == 'G') { 
    println(" G: Decrease the gap between phases by f9 ");  
    for (int i = 0; i < networkSize; i++) {
      //       net.phase[i] -=i*0.01;
    //  net.phase[i] -=i*0.1;
       net.phase[i] -= (networkSize- oscillatorBlocked-i)*0.01;
    //  net.phase[i]=  net.phase[i]%TWO_PI;
      
    }
  }


  else if (key == 'd') {
    println(" d$: INCREASE (clock way) the gap between phases of 5% from the oscillator " + oscillatorBlocked + " called with the same number as memoryi " + memoryi );
    for (int i = 0; i < networkSize; i++) {

    //  net.phase[i] +=(oscillatorBlocked-i)*0.05; // oscillator 10 do not nove
        net.phase[i] +=(i+1)*0.05;

   //     net.phase[i] -=(i+1)*0.05;
    //        net.phase[i] +=(5-i)*0.1; // oscillator 10 do not nove
   //   net.phase[i] +=(networkSize-oscillatorBlocked)*0.05;
    //%%  net.phase[i] = net.phase[i]-(i)*0.05; //oscillatorBlocked;      //     net.phase[i] += (oscillatorBlocked+i)*0.05; reciproque de f ne fonctionne pas
   //   net.phase[i] =  net.phase[i]%TWO_PI;
      key='#';
      
    }
  }
  
  else if (key == 'D') { 
    println(" D$: Increase the gap between phases by f0  ");    
    for (int i = 0; i < networkSize; i++) {

    //  net.phase[i] +=(oscillatorBlocked-i)*0.1;
    //   net.phase[i] -=(i+1)*0.1;
        net.phase[i]+=   TWO_PI/networkSize/(networkSize)*(networkSize-1-i); // front  TWO_PI/8/(networkSize)*(i)   behind?
   //   net.phase[i] =  net.phase[i]%TWO_PI;
      
    }
  }
  /*
    else if (key == 'x') {//x$
   formerKey= 'x';
   fmemory+=f;
   for (int i = 0; i < networkSize-1; i++) {
   
   print ("f: "); 
   println (f);
   
   abstractPhase[networkSize-2-i] += net.oldPhase[networkSize-1]+(i*TWO_PI/3)%PI/12;
   
   net.phase[i]=  abstractPhase[networkSize-2-i]%TWO_PI;
   
   //    
   
   
   print ("fmemory: "); 
   println (fmemory);
   
   //  key='#';
   }
   
   println(" Increase the gap  fmemory between phases by f9 ");
   
   } 
   */
    else if (key == 'f') { 
    println(" F: Increase the gap between phases by f9 ");    
    for (int i = 0; i < networkSize; i++) {

      //  net.phase[i] +=(i+1)*0.05;
      //    net.phase[i] +=(i+1)*0.005;
      //  net.phase[i] += (oscillatorBlocked+i)*0.05;  // l'oscillateur ne se bloque pas
   //   net.phase[i] -= (networkSize- oscillatorBlocked-i)*0.05;

       net.phase[i] +=(i+1)*0.05;

   //   net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      
    }
    }

    else if (key == 'F') { 
    println(" F: Increase the gap between phases by f9 ");    
    for (int i = 0; i < networkSize; i++) {

   //   net.phase[i] +=(i+1)*0.1;
    //  net.phase[i] +=TWO_PI/8/(networkSize-1)*i; // 8 is the step, if 16 little step
     net.phase[i] +=TWO_PI/12/(networkSize-1)*i; // 8 is the step, if 16 little step  //BEHIND
  //        net.phase[i]+=   TWO_PI/(networkSize)/(networkSize+0)*(networkSize-1-i); // front 

   //   net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      
    }
    }

    else if (keyCode == CONTROL) { 
    println("INCREASE phases with special modulo   "); //P$ 

    for (int i = 0; i < networkSize; i++) {

    //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit and oscillator11 not affected thanks to -1 in second part of equation
    //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-3-i)); // TWOPI/10--> 10 hit and oscillator9 not affected thanks to -3 in second part of equation 
    //** net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected

    // net.phase[i]+=   (PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected
     net.phase[i]+=   TWO_PI/(networkSize+1)*(networkSize-1-i); // front 
      //  net.phase[i]+=   TWO_PI/(networkSize-2)*i; // behind

      //     net.phase[networkSize-1-i] += (i*TWO_PI/10)%PI/3;  // 10*3 hit//same effect as above 

      keyCode=BACKSPACE;
 

    }
  }


    else if (key == 'P') { 
    println("INCREASE phases with special modulo P$   "); //P$ 
    for (int i = 0; i < networkSize; i++) {

      //     net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit and oscillator11 not affected thanks to -1 in second part of equation
      //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-3-i)); // TWOPI/10--> 10 hit and oscillator9 not affected thanks to -3 in second part of equation 
      net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i))%PI/3; // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected

      //     net.phase[networkSize-1-i] += (i*TWO_PI/10)%PI/3;  // 10*3 hit//same effect as above 
    //  net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      
    }
  }
  
  
   else if (key == 'M') { 
    println("INCREASE phases with 0.5   "); //
    for (int i = 0; i < networkSize; i++) {
      //       net.phase[i] += QUARTER_PI/2 * net.phase[1*(networkSize-1-i)] ;//
      net.phase[i] =net.phase[i] +  QUARTER_PI/2;//

      //      net.phase[i] = net.phase[i] - QUARTER_PI  i;
   //   net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      
    }
  } else if (key == 'p') {
    println("DECREASE  phases with special modulo    "); // UTILISE SI ELLES ONT deja un ecart equidistant
    for (int i = 0; i < networkSize; i++) {  

      net.phase[i]-= ((TWO_PI/(networkSize-2))*(1*(networkSize-1-i)))%PI/6; // 
    //  net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      
    }
  } else if (key == 'm') {
    println("DECREASE phases with 0.5   "); // UTILISE SI ELLES ONT deja un ecart equidistant
    for (int i = 0; i < networkSize; i++) {  
      //   netPhaseBase[i] -= PI/32 * netOldPhaseBase[i] ;//
      //   netPhaseBase[i] -= PI/8 * netPhaseBase[i] ;//OK
      
          net.phase[i] =net.phase[i]- QUARTER_PI/8;

      
      key='#';
    } 
  }   
  // ****************** ALIGNEMENT of PHASES --- thus, phases alignement depend of coupling.

  else if (key == '9' && circularMov==true )//9$

  { 

    println(" Align oscillator vertically to the top  ");
    for (int i = 0; i < networkSize; i++) {
      net.phase[i]= 0-PI/2; 
      //      net.phase[i]= 0; 
      
    }
  } 
  
    else if (key == 'ç') {
    if (circularMov==true) {

    float [] realign = new float [networkSize];
      for (int i = 0; i < networkSize; i++) {
       realign[i] = net.phase[i]%TWO_PI;
       net.phase[i]=  net.phase[i] - realign[i];   
      }
    }

    if (circularMov==false) {
      println(" Align oscillator vertically to the down  ");
      //formerKey = 'o';

    float [] realign = new float [networkSize];
      for (int i = 0; i < networkSize; i++) {
       realign[i] = net.phase[i]%TWO_PI+PI/2;
       net.phase[i]=  net.phase[i] - realign[i];
      //  net.phase[i]= 0+PI/2  ; // position 0+PI/2  
        
      }
    }
  } 
  ///******************************==================================================== MODULATE SPEED of ALL FREQUENCIE MORE OR LESS FASTLY in PENDULAR $
  /// ****************************  How could i modulate the couple?

  else if (key == 'y') { 
    println("y= Increase last frequencies + 0.05*i ");
    for (int i = 0; i < networkSize; i++) {   
      net.naturalFrequency[i] = net.naturalFrequency[i]*(1.05);
      
    }
  } else if (key == 'h') { 
    println(" Decrease last frequencies - 0.05*i"); 
    for (int i = 0; i < networkSize; i++) { 
      net.naturalFrequency[i] = net.naturalFrequency[i]*(.95);            
      
    }
  } else if (key == 'Y') { 
    println("y= Increase last frequencies + 0.05*i ");
       println("y= Increase last frequencies + 0.05*i ");

    for (int i = 0; i < networkSize; i++) {   
      println("y= Increase last frequencies + 0.05*i ");
       println("y= Increase last frequencies + 0.05*i ");
      net.naturalFrequency[i] = net.naturalFrequency[i]*(1.10);
      key='#';
      
    }
  } else if (key == 'H') { 
    println(" Decrease last frequencies - 0.05*i"); 
    for (int i = 0; i < networkSize; i++) { 
      net.naturalFrequency[i] = net.naturalFrequency[i]*(.90);   
      key='#';
      
    }
  } 

  //************************** CHANGE THE WAY OF ROTATION O$
  else if (key == 'o') 
  { 
    if ( keyMode != " phasePattern "){
  // for (int i = 0; i < networkSize; i++) {
   //  net.naturalFrequency[i]=signal[2]; 
     signal[2]= - signal[2]; 
   //  } 
     }  
    println("  Changes way of rotation  "); 
    for (int i = 0; i < networkSize; i++) {
      background(120, 20, 20);
      net.naturalFrequency[i] = -1* net.naturalFrequency[i];

      // interFrequency[memoryi] = -1* net.naturalFrequency[i];
      
    }
  } else if (key == '0') {//Set all frequencies at 2.0");
    for (int i = 0; i < networkSize-0; i++) {   
      //  net.naturalFrequency[i]=2.0; 
      net.naturalFrequency[i]=1;
    }
    //  
  } else if (key == '°') {//Set all frequencies at 2.0");
    for (int i = 0; i < networkSize; i++) {   
      //  net.naturalFrequency[i]=2.0; 
      net.naturalFrequency[i]=0;
    }
    //  
  } else if (keyCode == CONTROL) {  
    println(" RECORD COUPLING "); 

  //  text ( coupling, - 400, height - 1000); // coupling appears on screen and is recorded on the file data.txt
  //  net.setCoupling(coupling);
  } 
  key ='#';
  //************************************ ENDPENDULARPATTERN  //************************************ END OF PENDULARRRRRRR  $
  //************************************ DONT TOUCH  //************************************ END OF PENDULARRRRRRR  $
  //************************************ DONT TOUCH  //************************************ END OF PENDULARRRRRRR  $
  }
 }
}
