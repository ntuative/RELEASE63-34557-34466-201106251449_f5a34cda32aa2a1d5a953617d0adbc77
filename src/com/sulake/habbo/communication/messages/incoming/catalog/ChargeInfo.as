package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2639:int;
      
      private var var_2641:int;
      
      private var var_1252:int;
      
      private var var_1253:int;
      
      private var var_1922:int;
      
      private var var_2640:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2639 = param1.readInteger();
         this.var_2641 = param1.readInteger();
         this.var_1252 = param1.readInteger();
         this.var_1253 = param1.readInteger();
         this.var_1922 = param1.readInteger();
         this.var_2640 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2639;
      }
      
      public function get charges() : int
      {
         return this.var_2641;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1252;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1253;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2640;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1922;
      }
   }
}
