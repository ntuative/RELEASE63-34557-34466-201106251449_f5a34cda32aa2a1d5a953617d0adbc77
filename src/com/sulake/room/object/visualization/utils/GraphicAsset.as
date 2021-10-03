package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2543:String;
      
      private var var_2582:String;
      
      private var var_500:BitmapDataAsset;
      
      private var var_1504:Boolean;
      
      private var var_1503:Boolean;
      
      private var var_2583:Boolean;
      
      private var _offsetX:int;
      
      private var var_1157:int;
      
      private var var_223:int;
      
      private var _height:int;
      
      private var var_848:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2543 = param1;
         this.var_2582 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_500 = _loc9_;
            this.var_848 = false;
         }
         else
         {
            this.var_500 = null;
            this.var_848 = true;
         }
         this.var_1504 = param4;
         this.var_1503 = param5;
         this._offsetX = param6;
         this.var_1157 = param7;
         this.var_2583 = param8;
      }
      
      public function dispose() : void
      {
         this.var_500 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_848 && this.var_500 != null)
         {
            _loc1_ = this.var_500.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_223 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_848 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1503;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1504;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_223;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2543;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2582;
      }
      
      public function get asset() : IAsset
      {
         return this.var_500;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2583;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1504)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1503)
         {
            return this.var_1157;
         }
         return -(this.height + this.var_1157);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1157;
      }
   }
}
