package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPlayListModificationMessage extends RoomWidgetMessage
   {
      
      public static const const_844:String = "RWPLAM_ADD_TO_PLAYLIST";
      
      public static const const_852:String = "RWPLAM_REMOVE_FROM_PLAYLIST";
       
      
      private var var_2658:int;
      
      private var var_3021:int;
      
      public function RoomWidgetPlayListModificationMessage(param1:String, param2:int = -1, param3:int = -1)
      {
         super(param1);
         this.var_3021 = param2;
         this.var_2658 = param3;
      }
      
      public function get diskId() : int
      {
         return this.var_2658;
      }
      
      public function get slotNumber() : int
      {
         return this.var_3021;
      }
   }
}
