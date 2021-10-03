package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_111:int = 1;
      
      public static const const_75:int = 2;
       
      
      private var var_1360:int;
      
      private var _furniId:int;
      
      private var var_2603:int;
      
      private var var_2242:String;
      
      private var var_1789:int;
      
      private var var_2604:int;
      
      private var var_2602:int;
      
      private var var_430:int;
      
      private var var_2601:int = -1;
      
      private var var_1914:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1360 = param1;
         this._furniId = param2;
         this.var_2603 = param3;
         this.var_2242 = param4;
         this.var_1789 = param5;
         this.var_430 = param6;
         this.var_2604 = param7;
         this.var_1914 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2604;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2602 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2602;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2601;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2601 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1789 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1360 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1914;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1914 = param1;
      }
   }
}
