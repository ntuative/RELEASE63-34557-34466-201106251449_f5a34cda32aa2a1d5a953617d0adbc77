package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1560:Boolean;
      
      private var var_2705:int;
      
      private var var_2075:int;
      
      private var var_2074:int;
      
      private var var_2706:int;
      
      private var var_2707:int;
      
      private var var_2704:int;
      
      private var var_2479:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1560;
      }
      
      public function get commission() : int
      {
         return this.var_2705;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2075;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2074;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2707;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2706;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2704;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2479;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1560 = param1.readBoolean();
         this.var_2705 = param1.readInteger();
         this.var_2075 = param1.readInteger();
         this.var_2074 = param1.readInteger();
         this.var_2707 = param1.readInteger();
         this.var_2706 = param1.readInteger();
         this.var_2704 = param1.readInteger();
         this.var_2479 = param1.readInteger();
         return true;
      }
   }
}
