package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_2053:int;
      
      private var var_2835:int;
      
      private var var_894:int;
      
      private var var_571:Number;
      
      private var var_2833:Boolean;
      
      private var var_2834:int;
      
      private var var_2064:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_571);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2835 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2834 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2833 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_894;
         if(this.var_894 == 1)
         {
            this.var_571 = param1;
            this.var_2053 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_894);
            this.var_571 = this.var_571 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2833 && param3 - this.var_2053 >= this.var_2835)
         {
            this.var_894 = 0;
            if(this.var_2064 < this.var_2834)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2064;
               this.var_2053 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
