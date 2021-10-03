package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1360:int;
      
      private var _furniId:int;
      
      private var var_2603:int;
      
      private var var_2242:String;
      
      private var var_1789:int;
      
      private var var_430:int;
      
      private var var_2601:int = -1;
      
      private var var_2604:int;
      
      private var var_1914:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1360 = param1;
         this._furniId = param2;
         this.var_2603 = param3;
         this.var_2242 = param4;
         this.var_1789 = param5;
         this.var_430 = param6;
         this.var_2601 = param7;
         this.var_2604 = param8;
         this.var_1914 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2603;
      }
      
      public function get stuffData() : String
      {
         return this.var_2242;
      }
      
      public function get price() : int
      {
         return this.var_1789;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2601;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2604;
      }
      
      public function get offerCount() : int
      {
         return this.var_1914;
      }
   }
}
