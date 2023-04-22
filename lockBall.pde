  void lockOscillatorToPositionFromPreviousProagedBall() { 

  if (formerFormerKey  != '#' ) { //  works always ?
   oscillatorChanged=true;
    
  int i;
  i= oscillatorChange;

  
  int j;  
  j= (oscillatorChange-1);
  if (j<= -1){
  j= networkSize-1;
  }
  
  int k;  
  k= (j-1);
  if (k<= -1){
  k= networkSize-1;
  }
  
  int l;  
  l= (k-1);
  if (l<= -1){
  l= networkSize-1;
  }
  
  int m;  
  m= (l-1);
  if (m<= -1){
  m= networkSize-1;
  }
      
  if (oscillatorChanged==true )  { 
    
    if (  LFO[j]<0){   
   //  LFO[i] = LFO[i] - phaseKeptAtChange[j];
    phaseKeptAtChange[i]=LFO[j];  // the position of the actual changing ball is at the position of the prevous propaged ball
    dataMappedForMotor[j]= int (map ( phaseKeptAtChange[i], 0, -TWO_PI, numberOfStep, 0)); 

       netPhaseBase[j]= map (dataMappedForMotor[j], numberOfStep, 0, 0, -TWO_PI);
   
  }
       
   else
 
  // LFO[i] = LFO[i]+ phaseKeptAtChange[j];
       phaseKeptAtChange[i]=LFO[j];

     //  LFO[j] = LFO[j]%TWO_PI;
       dataMappedForMotor[j]= (int) map (phaseKeptAtChange[i], 0, TWO_PI, 0, numberOfStep);

       netPhaseBase[j]= map (dataMappedForMotor[j], 0, numberOfStep, 0, TWO_PI);
  
   }
    
    phaseMappedFollow[j]=netPhaseBase[j];    //  RECORD on oscillatorChange-1 the postion of oscillatorChange where it has just changed

  
   //  phaseMappedFollow[oscillatorChange]= phaseKeptAtChange[oscillatorChange]; 

         for (int p = 0; i < networkSize-0; i+=1) { 
   // phaseMappedFollow[i]= net.phase[i];// add offset given by pendularPattern   
  //  phaseMappedFollow[i] = netPhaseBase[i];
    phaseMappedFollow[p]= phaseMappedFollow[p]%TWO_PI;  
    }

       LFO[l] = LFO[l]%TWO_PI;
       dataMappedForMotor[l]= (int) map (LFO[l], 0, TWO_PI, 0, numberOfStep);
            
       netPhaseBase[l]= map (dataMappedForMotor[l], 0, numberOfStep, 0, TWO_PI);
 


       LFO[k] = LFO[k]%TWO_PI;
       dataMappedForMotor[k]= (int) map (LFO[k], 0, TWO_PI, 0, numberOfStep);
 
      
       netPhaseBase[k]= map (dataMappedForMotor[k], 0, numberOfStep, 0, TWO_PI);


       LFO[j] = LFO[j]%TWO_PI;
       dataMappedForMotor[j]= (int) map (LFO[j], 0, TWO_PI, 0, numberOfStep);
  //     println (" phaseKeptAtChange[oscillatorChange] ", oscillatorChange, " " ,  phaseKeptAtChange[oscillatorChange]);
       netPhaseBase[j]= map (dataMappedForMotor[j], 0, numberOfStep, 0, TWO_PI);

     oscillatorChanged=false;
     }
}  