package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_833:String = "";
      
      public static const const_450:int = 0;
      
      public static const const_584:int = 255;
      
      public static const const_783:Boolean = false;
      
      public static const const_535:int = 0;
      
      public static const const_630:int = 0;
      
      public static const const_440:int = 0;
      
      public static const const_1398:int = 1;
      
      public static const const_1336:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2304:String = "";
      
      private var var_1975:int = 0;
      
      private var var_2420:int = 255;
      
      private var var_3011:Boolean = false;
      
      private var var_3010:int = 0;
      
      private var var_3008:int = 0;
      
      private var var_3009:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2304 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2304;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1975 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1975;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2420 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2420;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_3011 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_3011;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_3010 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_3010;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_3008 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_3008;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_3009 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_3009;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
