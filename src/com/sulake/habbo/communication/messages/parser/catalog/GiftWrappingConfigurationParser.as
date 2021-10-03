package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2596:Boolean;
      
      private var var_2597:int;
      
      private var var_1912:Array;
      
      private var var_891:Array;
      
      private var var_893:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2596;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2597;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1912;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_891;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_893;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1912 = [];
         this.var_891 = [];
         this.var_893 = [];
         this.var_2596 = param1.readBoolean();
         this.var_2597 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1912.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_891.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_893.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
