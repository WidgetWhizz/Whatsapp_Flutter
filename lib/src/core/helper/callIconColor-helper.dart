class CallIconColorHelper{
  static int getTitleColor(String callType){
    if(callType == "outgoing missed call" || callType == "incoming missed call"){
      return 0xFFba0707;
    }else{
      return 0xFF2acb00;
    }
  }
}