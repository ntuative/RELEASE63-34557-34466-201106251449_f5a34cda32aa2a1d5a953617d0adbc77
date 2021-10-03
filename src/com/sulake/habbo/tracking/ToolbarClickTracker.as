package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1431:IHabboTracking;
      
      private var var_1989:Boolean = false;
      
      private var var_2527:int = 0;
      
      private var var_1876:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1431 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1431 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1989 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2527 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1989)
         {
            return;
         }
         ++this.var_1876;
         if(this.var_1876 <= this.var_2527)
         {
            this.var_1431.trackGoogle("toolbar",param1);
         }
      }
   }
}
