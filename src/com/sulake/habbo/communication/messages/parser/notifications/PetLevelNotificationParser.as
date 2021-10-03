package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1825:int;
      
      private var var_2715:String;
      
      private var var_1301:int;
      
      private var var_1279:int;
      
      private var var_1751:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1825 = param1.readInteger();
         this.var_2715 = param1.readString();
         this.var_1301 = param1.readInteger();
         this.var_1279 = param1.readInteger();
         this.var_1751 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1825;
      }
      
      public function get petName() : String
      {
         return this.var_2715;
      }
      
      public function get level() : int
      {
         return this.var_1301;
      }
      
      public function get petType() : int
      {
         return this.var_1279;
      }
      
      public function get breed() : int
      {
         return this.var_1751;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
