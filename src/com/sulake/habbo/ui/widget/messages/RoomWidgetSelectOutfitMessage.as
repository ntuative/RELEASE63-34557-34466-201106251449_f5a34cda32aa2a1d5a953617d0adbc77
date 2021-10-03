package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1409:String = "select_outfit";
       
      
      private var var_2903:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1409);
         this.var_2903 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2903;
      }
   }
}
