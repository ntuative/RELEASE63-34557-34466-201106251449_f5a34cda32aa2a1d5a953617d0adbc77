package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1790:int;
      
      private var var_1799:int;
      
      private var var_1800:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1799 = param1.readInteger();
         this.var_1790 = param1.readInteger();
         this.var_1800 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1790 = 0;
         this.var_1799 = 0;
         this.var_1800 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1790;
      }
      
      public function get messageId() : int
      {
         return this.var_1799;
      }
      
      public function get timestamp() : String
      {
         return this.var_1800;
      }
   }
}
