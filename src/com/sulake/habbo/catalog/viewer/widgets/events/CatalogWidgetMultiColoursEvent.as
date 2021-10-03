package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_955:Array;
      
      private var var_2598:String;
      
      private var var_2599:String;
      
      private var var_2600:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_955 = param1;
         this.var_2598 = param2;
         this.var_2599 = param3;
         this.var_2600 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_955;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2598;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2599;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2600;
      }
   }
}
