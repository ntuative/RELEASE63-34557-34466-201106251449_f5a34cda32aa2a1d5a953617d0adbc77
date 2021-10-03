package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2203:int = 1;
      
      public static const const_2263:int = 2;
      
      public static const const_2276:int = 3;
      
      public static const const_2296:int = 4;
      
      public static const const_1977:int = 5;
      
      public static const const_2327:int = 6;
      
      public static const const_1852:int = 7;
      
      public static const const_1967:int = 8;
      
      public static const const_2228:int = 9;
      
      public static const const_1868:int = 10;
      
      public static const const_1957:int = 11;
      
      public static const const_2024:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1790:int;
      
      private var var_735:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1790 = param1.readInteger();
         this.var_735 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1790;
      }
      
      public function get info() : String
      {
         return this.var_735;
      }
   }
}
