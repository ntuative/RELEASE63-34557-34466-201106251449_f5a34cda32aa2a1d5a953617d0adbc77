package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2579:int;
      
      private var var_2577:int;
      
      private var var_2736:String;
      
      private var var_2738:int;
      
      private var var_2737:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2579 = param1;
         this.var_2577 = param2;
         this.var_2736 = param3;
         this.var_2738 = param4;
         this.var_2737 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2579,this.var_2577,this.var_2736,this.var_2738,int(this.var_2737)];
      }
      
      public function dispose() : void
      {
      }
   }
}
