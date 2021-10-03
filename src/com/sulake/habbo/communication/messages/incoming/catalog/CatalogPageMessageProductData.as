package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_76:String = "s";
      
      public static const const_188:String = "e";
       
      
      private var var_1630:String;
      
      private var var_2759:int;
      
      private var var_1089:String;
      
      private var var_1629:int;
      
      private var var_2068:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1630 = param1.readString();
         this.var_2759 = param1.readInteger();
         this.var_1089 = param1.readString();
         this.var_1629 = param1.readInteger();
         this.var_2068 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1630;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2759;
      }
      
      public function get extraParam() : String
      {
         return this.var_1089;
      }
      
      public function get productCount() : int
      {
         return this.var_1629;
      }
      
      public function get expiration() : int
      {
         return this.var_2068;
      }
   }
}
