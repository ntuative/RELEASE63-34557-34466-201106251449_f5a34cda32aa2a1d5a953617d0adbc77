package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1537:int = 3;
      
      private static const const_1584:int = 2;
      
      private static const const_1585:int = 1;
      
      private static const const_1583:int = 15;
       
      
      private var var_326:Array;
      
      private var var_1287:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_326 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1584)
         {
            this.var_326 = new Array();
            this.var_326.push(const_1585);
            this.var_1287 = const_1583;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1287 > 0)
         {
            --this.var_1287;
         }
         if(this.var_1287 == 0)
         {
            if(this.var_326.length > 0)
            {
               super.setAnimation(this.var_326.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
