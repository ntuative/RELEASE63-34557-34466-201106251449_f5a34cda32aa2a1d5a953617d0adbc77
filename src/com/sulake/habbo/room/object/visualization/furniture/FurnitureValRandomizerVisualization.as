package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1079:int = 20;
      
      private static const const_695:int = 10;
      
      private static const const_1538:int = 31;
      
      private static const const_1537:int = 32;
      
      private static const const_694:int = 30;
       
      
      private var var_326:Array;
      
      private var var_780:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_326 = new Array();
         super();
         super.setAnimation(const_694);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_780)
            {
               this.var_780 = true;
               this.var_326 = new Array();
               this.var_326.push(const_1538);
               this.var_326.push(const_1537);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_695)
         {
            if(this.var_780)
            {
               this.var_780 = false;
               this.var_326 = new Array();
               if(direction == 2)
               {
                  this.var_326.push(const_1079 + 5 - param1);
                  this.var_326.push(const_695 + 5 - param1);
               }
               else
               {
                  this.var_326.push(const_1079 + param1);
                  this.var_326.push(const_695 + param1);
               }
               this.var_326.push(const_694);
               return;
            }
            super.setAnimation(const_694);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_326.length > 0)
            {
               super.setAnimation(this.var_326.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
