package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2111:String = "";
      
      private var var_1772:String = "";
      
      private var var_2679:String = "";
      
      private var var_2677:Number = 0;
      
      private var var_2682:Number = 0;
      
      private var var_2653:Number = 0;
      
      private var var_2648:Number = 0;
      
      private var var_2676:Boolean = false;
      
      private var var_2678:Boolean = false;
      
      private var var_2681:Boolean = false;
      
      private var var_2680:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2111 = param2;
         this.var_1772 = param3;
         this.var_2679 = param4;
         this.var_2677 = param5;
         this.var_2682 = param6;
         this.var_2653 = param7;
         this.var_2648 = param8;
         this.var_2676 = param9;
         this.var_2678 = param10;
         this.var_2681 = param11;
         this.var_2680 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2111;
      }
      
      public function get canvasId() : String
      {
         return this.var_1772;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2679;
      }
      
      public function get screenX() : Number
      {
         return this.var_2677;
      }
      
      public function get screenY() : Number
      {
         return this.var_2682;
      }
      
      public function get localX() : Number
      {
         return this.var_2653;
      }
      
      public function get localY() : Number
      {
         return this.var_2648;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2676;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2678;
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
