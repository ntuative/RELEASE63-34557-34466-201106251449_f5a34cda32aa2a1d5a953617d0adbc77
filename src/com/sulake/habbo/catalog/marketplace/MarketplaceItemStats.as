package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2604:int;
      
      private var var_2647:int;
      
      private var var_2645:int;
      
      private var _dayOffsets:Array;
      
      private var var_1944:Array;
      
      private var var_1943:Array;
      
      private var var_2646:int;
      
      private var var_2644:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2604;
      }
      
      public function get offerCount() : int
      {
         return this.var_2647;
      }
      
      public function get historyLength() : int
      {
         return this.var_2645;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1944;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1943;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2646;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2644;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2604 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2647 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2645 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1944 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1943 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2646 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2644 = param1;
      }
   }
}
