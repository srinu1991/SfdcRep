// Trigger to Call HelloSfdc Class in Lead Trigger
//
//
trigger SFDCTrigger on Lead (before Insert,before update) {
    HelloSfdc sf = new HelloSfdc();
     // call the printSfdc method here
        sf.PrintSfdc();
}