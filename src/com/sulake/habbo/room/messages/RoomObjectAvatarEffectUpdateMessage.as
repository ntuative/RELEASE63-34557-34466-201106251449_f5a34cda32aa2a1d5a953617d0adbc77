package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarEffectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_125:int;
      
      private var var_2692:int;
      
      public function RoomObjectAvatarEffectUpdateMessage(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_125 = param1;
         this.var_2692 = param2;
      }
      
      public function get effect() : int
      {
         return this.var_125;
      }
      
      public function get delayMilliSeconds() : int
      {
         return this.var_2692;
      }
   }
}
