package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_930:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1347:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2128:String = "RWOCM_PIXELS";
      
      public static const const_2150:String = "RWOCM_CREDITS";
      
      public static const const_2176:String = "RWOCM_SHELLS";
       
      
      private var var_2819:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_930);
         this.var_2819 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2819;
      }
   }
}
