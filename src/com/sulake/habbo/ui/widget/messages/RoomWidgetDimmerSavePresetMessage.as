package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_854:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2579:int;
      
      private var var_2577:int;
      
      private var _color:uint;
      
      private var var_1366:int;
      
      private var var_2578:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_854);
         this.var_2579 = param1;
         this.var_2577 = param2;
         this._color = param3;
         this.var_1366 = param4;
         this.var_2578 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2579;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2577;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1366;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2578;
      }
   }
}
