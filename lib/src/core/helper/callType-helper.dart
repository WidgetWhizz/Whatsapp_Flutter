class CallTypeHelper{
  static String callType(String callType){
    if(callType == "outgoing missed call"){
      return 'assets/images/outgoing_call.png';
    }else{
      return 'assets/images/incoming_call.png';
    }
  }
}