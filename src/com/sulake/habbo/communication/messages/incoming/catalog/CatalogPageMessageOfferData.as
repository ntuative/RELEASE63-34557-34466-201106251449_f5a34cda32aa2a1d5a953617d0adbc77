package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1360:int;
      
      private var var_1921:String;
      
      private var var_1252:int;
      
      private var var_1253:int;
      
      private var var_1922:int;
      
      private var var_2125:int;
      
      private var var_1171:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1360 = param1.readInteger();
         this.var_1921 = param1.readString();
         this.var_1252 = param1.readInteger();
         this.var_1253 = param1.readInteger();
         this.var_1922 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1171 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1171.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2125 = param1.readInteger();
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
      
      public function get products() : Array
      {
         return this.var_1171;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1922;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2125;
      }
   }
}
