package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2386:int;
      
      private var var_2387:int;
      
      private var var_2385:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2386 = param1;
         this.var_2387 = param2;
         this.var_2385 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2386,this.var_2387,this.var_2385];
      }
      
      public function dispose() : void
      {
      }
   }
}
