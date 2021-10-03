package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2320:Number = 0.0;
      
      private var var_2318:Number = 0.0;
      
      private var var_2317:Number = 0.0;
      
      private var var_2319:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2320 = param1;
         this.var_2318 = param2;
         this.var_2317 = param3;
         this.var_2319 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2320;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2318;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2317;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2319;
      }
   }
}
