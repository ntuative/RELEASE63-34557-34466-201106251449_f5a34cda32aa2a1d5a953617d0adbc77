package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1360:int;
      
      private var var_1728:String;
      
      private var var_1789:int;
      
      private var _upgrade:Boolean;
      
      private var var_2398:Boolean;
      
      private var var_2397:int;
      
      private var var_2399:int;
      
      private var var_2401:int;
      
      private var var_2396:int;
      
      private var var_2400:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1360 = param1.readInteger();
         this.var_1728 = param1.readString();
         this.var_1789 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2398 = param1.readBoolean();
         this.var_2397 = param1.readInteger();
         this.var_2399 = param1.readInteger();
         this.var_2401 = param1.readInteger();
         this.var_2396 = param1.readInteger();
         this.var_2400 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get productCode() : String
      {
         return this.var_1728;
      }
      
      public function get price() : int
      {
         return this.var_1789;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2398;
      }
      
      public function get periods() : int
      {
         return this.var_2397;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2399;
      }
      
      public function get year() : int
      {
         return this.var_2401;
      }
      
      public function get month() : int
      {
         return this.var_2396;
      }
      
      public function get day() : int
      {
         return this.var_2400;
      }
   }
}
