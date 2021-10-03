package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_560:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_874:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_238:int;
      
      private var _text:String;
      
      private var var_356:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this.var_238 = param2;
         this._text = param3;
         this.var_356 = param4;
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_356;
      }
   }
}
