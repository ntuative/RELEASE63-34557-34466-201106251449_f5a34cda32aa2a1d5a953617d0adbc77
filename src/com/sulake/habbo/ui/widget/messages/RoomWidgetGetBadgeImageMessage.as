package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_932:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_1932:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_932);
         this.var_1932 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_1932;
      }
   }
}
