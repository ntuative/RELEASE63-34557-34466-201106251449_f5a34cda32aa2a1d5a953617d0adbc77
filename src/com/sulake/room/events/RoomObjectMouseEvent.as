package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_165:String = "ROE_MOUSE_CLICK";
      
      public static const const_200:String = "ROE_MOUSE_ENTER";
      
      public static const const_519:String = "ROE_MOUSE_MOVE";
      
      public static const const_190:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2192:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_552:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2111:String = "";
      
      private var var_2678:Boolean;
      
      private var var_2676:Boolean;
      
      private var var_2681:Boolean;
      
      private var var_2680:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2111 = param2;
         this.var_2678 = param5;
         this.var_2676 = param6;
         this.var_2681 = param7;
         this.var_2680 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2111;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2678;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2676;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2681;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2680;
      }
   }
}
