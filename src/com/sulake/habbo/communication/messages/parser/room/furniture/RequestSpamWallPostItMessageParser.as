package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1950:int;
      
      private var var_461:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1950;
      }
      
      public function get location() : String
      {
         return this.var_461;
      }
      
      public function flush() : Boolean
      {
         this.var_1950 = -1;
         this.var_461 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1950 = param1.readInteger();
         this.var_461 = param1.readString();
         return true;
      }
   }
}
