package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1560:Boolean = false;
      
      private var var_1789:int;
      
      private var var_1912:Array;
      
      private var var_891:Array;
      
      private var var_893:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1560 = _loc2_.isWrappingEnabled;
         this.var_1789 = _loc2_.wrappingPrice;
         this.var_1912 = _loc2_.stuffTypes;
         this.var_891 = _loc2_.boxTypes;
         this.var_893 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1560;
      }
      
      public function get price() : int
      {
         return this.var_1789;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1912;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_891;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_893;
      }
   }
}
