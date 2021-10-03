package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1987:String = "pricing_model_unknown";
      
      public static const const_416:String = "pricing_model_single";
      
      public static const const_411:String = "pricing_model_multi";
      
      public static const const_664:String = "pricing_model_bundle";
      
      public static const const_1880:String = "price_type_none";
      
      public static const const_977:String = "price_type_credits";
      
      public static const const_1242:String = "price_type_activitypoints";
      
      public static const const_1261:String = "price_type_credits_and_activitypoints";
       
      
      private var var_832:String;
      
      private var var_1254:String;
      
      private var var_1360:int;
      
      private var var_1921:String;
      
      private var var_1252:int;
      
      private var var_1253:int;
      
      private var var_1922:int;
      
      private var var_413:ICatalogPage;
      
      private var var_670:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2125:int = 0;
      
      private var var_2612:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1360 = param1;
         this.var_1921 = param2;
         this.var_1252 = param3;
         this.var_1253 = param4;
         this.var_1922 = param5;
         this.var_413 = param8;
         this.var_2125 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2125;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_413;
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get localizationId() : String
      {
         return this.var_1921;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1252;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1253;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1922;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_670;
      }
      
      public function get pricingModel() : String
      {
         return this.var_832;
      }
      
      public function get priceType() : String
      {
         return this.var_1254;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2612;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2612 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1360 = 0;
         this.var_1921 = "";
         this.var_1252 = 0;
         this.var_1253 = 0;
         this.var_1922 = 0;
         this.var_413 = null;
         if(this.var_670 != null)
         {
            this.var_670.dispose();
            this.var_670 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_832)
         {
            case const_416:
               this.var_670 = new SingleProductContainer(this,param1);
               break;
            case const_411:
               this.var_670 = new MultiProductContainer(this,param1);
               break;
            case const_664:
               this.var_670 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_832);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_832 = const_416;
            }
            else
            {
               this.var_832 = const_411;
            }
         }
         else if(param1.length > 1)
         {
            this.var_832 = const_664;
         }
         else
         {
            this.var_832 = const_1987;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1252 > 0 && this.var_1253 > 0)
         {
            this.var_1254 = const_1261;
         }
         else if(this.var_1252 > 0)
         {
            this.var_1254 = const_977;
         }
         else if(this.var_1253 > 0)
         {
            this.var_1254 = const_1242;
         }
         else
         {
            this.var_1254 = const_1880;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_413.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_670.products)
         {
            _loc4_ = this.var_413.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
