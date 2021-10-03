package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2168:int = 16777215;
      
      public static const const_1227:int = 8191;
      
      public static const const_1290:int = 8191;
      
      public static const const_2233:int = 1;
      
      public static const const_1334:int = 1;
      
      public static const const_1271:int = 1;
      
      private static var var_525:uint = 0;
      
      private static var var_526:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1227)
         {
            param2 = const_1227;
         }
         else if(param2 < const_1334)
         {
            param2 = const_1334;
         }
         if(param3 > const_1290)
         {
            param3 = const_1290;
         }
         else if(param3 < const_1271)
         {
            param3 = const_1271;
         }
         super(param2,param3,param4,param5);
         ++var_525;
         var_526 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_525;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_526;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_526 -= width * height * 4;
            --var_525;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
