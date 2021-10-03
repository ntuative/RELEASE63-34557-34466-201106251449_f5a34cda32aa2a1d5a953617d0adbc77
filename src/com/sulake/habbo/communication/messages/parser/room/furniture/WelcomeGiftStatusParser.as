package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1449:String;
      
      private var var_1172:Boolean;
      
      private var var_2593:Boolean;
      
      private var _furniId:int;
      
      private var var_2592:Boolean;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1449 = param1.readString();
         this.var_1172 = param1.readBoolean();
         this.var_2593 = param1.readBoolean();
         this._furniId = param1.readInteger();
         this.var_2592 = param1.readBoolean();
         return true;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2592;
      }
      
      public function get email() : String
      {
         return this.var_1449;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1172;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2593;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
