package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3122:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_95 = param1.desktop;
         var_70 = param1.var_1407 as WindowController;
         var_190 = param1.var_1405 as WindowController;
         var_186 = param1.renderer;
         var_937 = param1.var_1404;
         param2.begin();
         param2.end();
         param1.desktop = var_95;
         param1.var_1407 = var_70;
         param1.var_1405 = var_190;
         param1.renderer = var_186;
         param1.var_1404 = var_937;
      }
   }
}
