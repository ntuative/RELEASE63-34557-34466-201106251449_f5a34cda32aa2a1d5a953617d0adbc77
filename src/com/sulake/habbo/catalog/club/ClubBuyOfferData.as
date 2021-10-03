package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1360:int;
      
      private var var_1728:String;
      
      private var var_1789:int;
      
      private var _upgrade:Boolean;
      
      private var var_2398:Boolean;
      
      private var var_2397:int;
      
      private var var_2399:int;
      
      private var var_413:ICatalogPage;
      
      private var var_2401:int;
      
      private var var_2396:int;
      
      private var var_2400:int;
      
      private var var_1650:String;
      
      private var var_2402:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1360 = param1;
         this.var_1728 = param2;
         this.var_1789 = param3;
         this._upgrade = param4;
         this.var_2398 = param5;
         this.var_2397 = param6;
         this.var_2399 = param7;
         this.var_2401 = param8;
         this.var_2396 = param9;
         this.var_2400 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_413 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1650;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1650 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1789;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_413;
      }
      
      public function get priceType() : String
      {
         return Offer.const_977;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1728;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_413 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2402;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2402 = param1;
      }
   }
}
