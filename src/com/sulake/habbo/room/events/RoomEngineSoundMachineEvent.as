package com.sulake.habbo.room.events
{
   public class RoomEngineSoundMachineEvent extends RoomEngineObjectEvent
   {
      
      public static const const_741:String = "ROSM_SOUND_MACHINE_INIT";
      
      public static const const_1021:String = "ROSM_SOUND_MACHINE_SWITCHED_ON";
      
      public static const const_764:String = "ROSM_SOUND_MACHINE_SWITCHED_OFF";
      
      public static const const_791:String = "ROSM_SOUND_MACHINE_DISPOSE";
      
      public static const const_831:String = "ROSM_JUKEBOX_INIT";
      
      public static const const_1738:String = "ROSM_JUKEBOX_SWITCHED_ON";
      
      public static const const_1796:String = "ROSM_JUKEBOX_SWITCHED_OFF";
      
      public static const const_301:String = "ROSM_JUKEBOX_DISPOSE";
       
      
      public function RoomEngineSoundMachineEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
