package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2000:int = 0;
      
      private var var_2001:int = 0;
      
      private var var_1922:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2000;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2001;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1922;
      }
      
      public function flush() : Boolean
      {
         this.var_2000 = 0;
         this.var_2001 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2000 = param1.readInteger();
         this.var_2001 = param1.readInteger();
         this.var_1922 = param1.readInteger();
         return true;
      }
   }
}
